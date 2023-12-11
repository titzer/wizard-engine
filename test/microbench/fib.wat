(module
 (func $fib (param $n i32) (result i32)
  (if
   (i32.lt_s
    (local.get $n)
    (i32.const 2)
   )
   (return
    (i32.const 1)
   )
  )
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
 (func $main (export "main")
   (drop (call $fib (i32.const 22))) ;; tunable
 )
)
