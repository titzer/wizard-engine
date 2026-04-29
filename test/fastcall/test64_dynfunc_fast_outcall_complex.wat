;; Dynamic function (interpreted, created via wave.new_func) calls a fast handler
;; which makes an out-call to a non-fast function with its own loops and branches.
;; The out-callee is large/complex to maximize stp movement during the out-call.
;; After the fast call, the dynamic function branches (if/else) -- stp must be correct.
;;
;; Func index layout: 0=new_func, 1=fast:compute, 2=slow_sum, 3=main
;; slow_sum(n): sums 0..n-1, has a loop+br_if (lots of stp movement)
;; fast:compute calls slow_sum
;;
;; Dynamic function body (0 locals): if flag, return value; else call fast:compute(value)
;;   \00 \20\01 \04\7F \20\00 \05 \20\00 \10\01 \0B \0B
;; (fast:compute is func index 1)
(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  ;; slow_sum: sum 0+1+...+(n-1). Has a loop with br_if = multiple stp entries.
  (func $slow_sum (param $n i32) (result i32)
    (local $i i32) (local $acc i32)
    block $exit loop $top
      local.get $i local.get $n i32.ge_s br_if $exit
      local.get $acc local.get $i i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $top
    end end
    local.get $acc)

  ;; fast handler: calls slow_sum (the out-call)
  (func $compute (export "fast:compute") (param i32) (result i32)
    local.get 0
    call $slow_sum)

  (memory (export "memory") 1)
  ;; body bytes: \00 \20\01 \04\7F \20\00 \05 \20\00 \10\01 \0B \0B  (14 bytes)
  ;; fast:compute is func index 1
  (data (i32.const 0) "\00\20\01\04\7F\20\00\05\20\00\10\01\0B\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot i32)
    (local $acc i32)

    (call $new_func (i32.const 1) (i32.const 0) (i32.const 14))
    local.set $slot

    ;; dynfunc(5, 0) -> compute(5) = slow_sum(5) = 0+1+2+3+4 = 10
    i32.const 5
    i32.const 0
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.set $acc

    ;; dynfunc(5, 1) -> 5 (if-arm, no fast call, stp must be correct for this branch)
    i32.const 5
    i32.const 1
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.get $acc
    i32.add   ;; 10 + 5 = 15
    i32.const 15
    i32.ne)
)
