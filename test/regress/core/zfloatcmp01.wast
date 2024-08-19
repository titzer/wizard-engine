(module
   (memory 1)
   (data (i32.const 0) "abcdefghijklmnopqrstuvwxyz")
   (func $f (export "f") (param f64 f64) (result i32)
     (local $f i32)
     (i32.load (i32.const 0))
     (i32.load (i32.const 1))
     (i32.load (i32.const 2))
     (i32.load (i32.const 3))
     (i32.load (i32.const 4))
     (i32.load (i32.const 5))
     (i32.load (i32.const 6))
     (i32.load (i32.const 7))
     (i32.load (i32.const 8))
     (i32.load (i32.const 9))
     (i32.load (i32.const 10))
     (i32.load (i32.const 11))
     (i32.load (i32.const 12))
     (i32.load (i32.const 13))
     (i32.load (i32.const 14))
     (i32.load (i32.const 15))
     (i32.load (i32.const 16))
     (i32.load (i32.const 17))
     (i32.load (i32.const 18))
     (if (i32.load (i32.const 19))
       (then (local.set $f (f64.le (local.get 0) (local.get 1))))
       (else (local.set $f (f64.le (local.get 0) (local.get 1))))
     )
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     i32.add
     local.get $f
     i32.add
   )
)

(assert_return (invoke "f" (f64.const 1.1) (f64.const 2.2)) (i32.const 520_878_303))
(assert_return (invoke "f" (f64.const 3.1) (f64.const 2.2)) (i32.const 520_878_302))
(assert_return (invoke "f" (f64.const 3.1) (f64.const nan)) (i32.const 520_878_302))
