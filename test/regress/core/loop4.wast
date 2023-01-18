(module
  (func (export "main") (param i32 i32) (result i32)
    (local $f i32)
    (local.set $f (local.get 0))
    (loop
      (i32.add (local.get 0) (local.get 1))
      (return)
    )
    (i32.const 44)
  )
)

(assert_return (invoke "main" (i32.const 22) (i32.const 33)) (i32.const 55))
