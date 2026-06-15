;; Test `call_indirect` on negative (highest bit set) indices
(module
  (type $v_i (func (result i32)))
  (table 0 funcref)
  (func (export "main") (param i32) (result i32)
    (call_indirect (type $v_i) (local.get 0))
  )
)
(assert_trap (invoke "main" (i32.const 0)) "")
(assert_trap (invoke "main" (i32.const -1)) "")
(assert_trap (invoke "main" (i32.const 0x80000000)) "")
