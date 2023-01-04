(module
 (export "main" (func $fib))
 (func $fib (param $n i32) (result i32)
  (block
    (br_if 0 (i32.ge_s
      (local.get $n)
      (i32.const 2)
    ))
   (return
    (i32.const 1)
  ))
  (return
   (i32.add
    (call $fib
     (i32.sub
      (local.get $n)
      (i32.const 2)
     )
    )
    (call $fib
     (i32.sub
      (local.get $n)
      (i32.const 1)
     )
    )
   )
  )
 )
)
(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
(assert_return (invoke "main" (i32.const 1)) (i32.const 1))
(assert_return (invoke "main" (i32.const 2)) (i32.const 2))
(assert_return (invoke "main" (i32.const 3)) (i32.const 3))
(assert_return (invoke "main" (i32.const 4)) (i32.const 5))
(assert_return (invoke "main" (i32.const 5)) (i32.const 8))
(assert_return (invoke "main" (i32.const 6)) (i32.const 13))
(assert_return (invoke "main" (i32.const 7)) (i32.const 21))
(assert_return (invoke "main" (i32.const 8)) (i32.const 34))
