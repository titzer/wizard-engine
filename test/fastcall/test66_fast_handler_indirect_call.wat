;; Fast handler contains a call_indirect to a non-fast callee.
;; call_indirect inside SPC is treated as a slow out-call; handler must
;; save/restore frame state and return the result correctly.
;;
;; Func index layout: 0=double (non-fast), 1=fast:wrap (fast handler), 2=main
;; table[0] = $double
;;
;; fast:wrap(x): calls table[0](x) via call_indirect, returns result
;; main: calls fast:wrap(7), expects 14
(module
  (type $t_i_i (func (param i32) (result i32)))

  ;; non-fast callee stored in the table
  (func $double (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)

  ;; fast handler: dispatches indirectly to $double via table slot 0
  (func $wrap (export "fast:wrap") (param i32) (result i32)
    local.get 0
    i32.const 0           ;; table index
    call_indirect (type $t_i_i))

  (table (export "table") 1 funcref)
  (elem (i32.const 0) $double)

  (func (export "main") (result i32)
    i32.const 7
    call $wrap
    i32.const 14
    i32.ne)
)
