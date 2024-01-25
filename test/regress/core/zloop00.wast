(module
  (func $f (export "f") (param i32 i32) (result i32)
     local.get 1
     (block
       (loop
         local.get 0
         br_if 1
         i32.const 33
         local.set 1
         (local.set 0 (i32.sub (local.get 0) (i32.const 1)))
         br 0
       )
     )
     local.get 1
     i32.add
   )
)

(assert_return (invoke "f" (i32.const 0) (i32.const 2)) (i32.const 35))
(assert_return (invoke "f" (i32.const 1) (i32.const 2)) (i32.const 4))
(assert_return (invoke "f" (i32.const 0) (i32.const 22)) (i32.const 55))
(assert_return (invoke "f" (i32.const 3) (i32.const 22)) (i32.const 44))
