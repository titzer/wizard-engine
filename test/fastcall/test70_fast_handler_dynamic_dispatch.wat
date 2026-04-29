;; Fast handler dispatches to one of N table slots based on a runtime parameter.
;; The table index is computed from the argument, so the callee is not statically
;; known — tests truly dynamic indirect dispatch inside SPC.
;;
;; Func index layout: 0=double (non-fast), 1=negate (non-fast),
;;                    2=inc (non-fast), 3=fast:dispatch (fast), 4=main
;; table[0] = $double, table[1] = $negate, table[2] = $inc
;;
;; fast:dispatch(value, selector):
;;   call_indirect[selector](value)
;;   selector=0 -> double(value), selector=1 -> negate(value), selector=2 -> inc(value)
;;
;; main:
;;   dispatch(4, 0) = double(4)  = 8
;;   dispatch(8, 1) = negate(8)  = -8
;;   dispatch(3, 2) = inc(3)     = 4
;;   sum = 8 + (-8) + 4 = 4, check == 4
(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))

  (func $double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)

  (func $negate (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub)

  (func $inc (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)

  (func $dispatch (export "fast:dispatch") (param $value i32) (param $sel i32) (result i32)
    local.get $value
    local.get $sel
    call_indirect (type $t_i_i))

  (table (export "table") 3 funcref)
  (elem (i32.const 0) $double $negate $inc)

  (func (export "main") (result i32)
    (local $acc i32)

    ;; dispatch(4, 0) = double(4) = 8
    i32.const 4
    i32.const 0
    call $dispatch
    local.set $acc

    ;; dispatch(8, 1) = negate(8) = -8
    i32.const 8
    i32.const 1
    call $dispatch
    local.get $acc
    i32.add
    local.set $acc

    ;; dispatch(3, 2) = inc(3) = 4
    i32.const 3
    i32.const 2
    call $dispatch
    local.get $acc
    i32.add   ;; 8 + (-8) + 4 = 4
    i32.const 4
    i32.ne)
)
