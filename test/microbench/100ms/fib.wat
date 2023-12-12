;; INNER_CALIBRATION = 1100000
(module
 (memory (export "memory") 1)
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
   (local $n i32)
   (local.set $n (i32.sub (i32.const 32) (i32.clz (i32.const 110000000))))
   (drop (call $fib (local.get $n)))
 )
 (export "_start" (func $main))
)
