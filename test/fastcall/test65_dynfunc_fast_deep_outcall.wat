;; Dynamic function (wave.new_func) has if/else; the fast handler it calls makes
;; a deep chain of out-calls (non-fast), each with their own loops and branches.
;; This maximizes the chance that m_ip or m_stp in the dynamic function's frame
;; gets clobbered by the deep call chain before the fast handler returns.
;;
;; Func layout: 0=new_func, 1=fast:run, 2=depth2, 3=depth1, 4=main
;; fast:run -> depth1(n) -> depth2(n) -> loop summing
;;
;; Dynamic body (type 1 = ii->i, 0 locals):
;;   if flag: return value; else: call fast:run(value)
;;   \00 \20\01 \04\7F \20\00 \05 \20\00 \10\01 \0B \0B
(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  ;; depth2: sum 1..n (loop with br_if)
  (func $depth2 (param $n i32) (result i32)
    (local $i i32) (local $acc i32)
    i32.const 1 local.set $i
    block $exit loop $top
      local.get $i local.get $n i32.gt_s br_if $exit
      local.get $acc local.get $i i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $top
    end end
    local.get $acc)

  ;; depth1: calls depth2 twice with different args, adds results
  (func $depth1 (param $n i32) (result i32)
    (local $a i32)
    local.get $n call $depth2 local.set $a
    local.get $n i32.const 1 i32.add call $depth2
    local.get $a i32.add)

  ;; fast handler: calls depth1 (out-call from SPC into interpreter)
  (func $run (export "fast:run") (param i32) (result i32)
    local.get 0
    call $depth1)

  (memory (export "memory") 1)
  ;; fast:run is func index 3
  (data (i32.const 0) "\00\20\01\04\7F\20\00\05\20\00\10\03\0B\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot i32)
    (local $r0 i32) (local $r1 i32)

    (call $new_func (i32.const 1) (i32.const 0) (i32.const 14))
    local.set $slot

    ;; dynfunc(4, 0) -> run(4) = depth1(4) = depth2(4)+depth2(5)
    ;;   depth2(4) = 1+2+3+4 = 10, depth2(5) = 1+2+3+4+5 = 15 -> 25
    i32.const 4
    i32.const 0
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.set $r0

    ;; dynfunc(4, 1) -> 4 (if-arm: no fast call, stp must be correct here)
    i32.const 4
    i32.const 1
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.set $r1

    local.get $r0 i32.const 25 i32.ne
    local.get $r1 i32.const 4  i32.ne
    i32.or)
)
