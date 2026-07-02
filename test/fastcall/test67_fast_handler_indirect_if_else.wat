;; Fast handler contains call_indirect inside an if/else.
;; One arm performs the indirect out-call, the other is pure.
;; stp must be correct on both arms after compilation.
;;
;; Func index layout: 0=double (non-fast), 1=fast:branch_call (fast), 2=main
;; table[0] = $double
;;
;; fast:branch_call(value, flag):
;;   if flag != 0: return value
;;   else: return call_indirect[table[0]](value)   ;; = double(value)
;;
;; main: branch_call(5, 1) = 5
;;        branch_call(6, 0) = double(6) = 12
;;        sum = 17
(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))

  (func $double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)

  (func $branch_call (export "fast:branch_call") (param $v i32) (param $flag i32) (result i32)
    local.get $flag
    if (result i32)
      local.get $v
    else
      local.get $v
      i32.const 0
      call_indirect (type $t_i_i)
    end)

  (table (export "table") 1 funcref)
  (elem (i32.const 0) $double)

  (func (export "main") (result i32)
    (local $acc i32)

    ;; if-arm: no indirect call, returns value as-is
    i32.const 5
    i32.const 1
    call $branch_call
    local.set $acc

    ;; else-arm: indirect call to double
    i32.const 6
    i32.const 0
    call $branch_call
    local.get $acc
    i32.add       ;; 5 + 12 = 17
    i32.const 17
    i32.ne)
)
