;; Fast handler makes two sequential call_indirect calls to different table slots.
;; Tests that ip/stp state is correct between consecutive indirect out-calls.
;;
;; Func index layout: 0=double (non-fast), 1=negate (non-fast),
;;                    2=fast:two_calls (fast), 3=main
;; table[0] = $double, table[1] = $negate
;;
;; fast:two_calls(x):
;;   a = call_indirect[0](x)   ;; double(x) = 2x
;;   b = call_indirect[1](a)   ;; negate(2x) = -2x
;;   return b
;;
;; main: two_calls(5) = negate(double(5)) = negate(10) = -10
;;       check result == -10
(module
  (type $t_i_i (func (param i32) (result i32)))

  (func $double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)

  (func $negate (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub)

  (func $two_calls (export "fast:two_calls") (param $x i32) (result i32)
    (local $a i32)
    local.get $x
    i32.const 0
    call_indirect (type $t_i_i)   ;; double(x)
    local.set $a
    local.get $a
    i32.const 1
    call_indirect (type $t_i_i)   ;; negate(a)
  )

  (table (export "table") 2 funcref)
  (elem (i32.const 0) $double $negate)

  (func (export "main") (result i32)
    i32.const 5
    call $two_calls
    i32.const -10
    i32.ne)
)
