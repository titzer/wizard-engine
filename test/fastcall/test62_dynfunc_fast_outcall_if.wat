;; Dynamic function (interpreted) calls a fast handler that itself makes an out-call
;; to a regular (non-fast) Wasm function. After the fast call returns, the dynamic
;; function branches (if/else) on the result. stp must survive the entire sequence.
;;
;; Func index layout: 0=new_func, 1=fast:double_via_call, 2=slow_double, 3=main
;; fast:double_via_call calls slow_double (a regular call = out-call from SPC)
;;
;; Dynamic function type 0: (i32 i32) -> i32
;;   if flag: return value; else: return fast:double_via_call(value)
;;
;; Body (0 locals):
;;   \00 \20\01 \04\7F \20\00 \05 \20\00 \10\01 \0B \0B
(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  ;; slow_double: a regular (non-fast) function called by the fast handler
  (func $slow_double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)

  ;; fast handler that makes an out-call to slow_double
  (func $double_via_call (export "fast:double_via_call") (param i32) (result i32)
    local.get 0
    call $slow_double)

  (memory (export "memory") 1)
  ;; body: \00 \20\01 \04\7F \20\00 \05 \20\00 \10\02 \0B \0B
  ;; (fast:double_via_call is func index 2)
  (data (i32.const 0) "\00\20\01\04\7F\20\00\05\20\00\10\02\0B\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot i32)
    (local $acc i32)

    ;; create: type=0 (ii->i), ptr=0, len=14
    (call $new_func (i32.const 1) (i32.const 0) (i32.const 14))
    local.set $slot

    ;; dynfunc(6, 0) -> double_via_call(6) = 12
    i32.const 6
    i32.const 0
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.set $acc

    ;; dynfunc(5, 1) -> 5 (if-arm: no fast call)
    i32.const 5
    i32.const 1
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.get $acc
    i32.add
    i32.const 17
    i32.ne)
)
