(module
  (func $dummy)

  (func (export "multi") (param i32 i32) (result i32)
    (local.set 0 (local.get 1))
    (loop
       (br_if 0 (local.tee 0 (i32.sub (local.get 0) (i32.const 1))))
    )
    (local.get 0)
  )  
)

(assert_return (invoke "multi" (i32.const 0) (i32.const 4)) (i32.const 0))
(assert_return (invoke "multi" (i32.const 1) (i32.const 3)) (i32.const 0))
