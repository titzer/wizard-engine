(module
  (type $fi (func (result i32)))
  (table funcref (elem $f30 $f31 $f32))

  (func $m (export "main") (param i32) (result i32)
    (return_call_indirect (type $fi) (local.get 0))
  )
  (func $f30 (result i32)
    (i32.const 30)
  )
  (func $f31 (result i32)
    (i32.const 31)
  )
  (func $f32 (result i32)
    (i32.const 32)
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 30))
(assert_return (invoke "main" (i32.const 1)) (i32.const 31))
(assert_return (invoke "main" (i32.const 2)) (i32.const 32))
