(module
  (func $f (export "f") (param i32) (result i32)
     local.get 0
     (block
       (loop
         local.get 0
         br_if 1
         (local.set 0 (i32.sub (local.get 0) (i32.const 1)))
         br 0
       )
     )
     local.get 0
     i32.add
   )
)

(assert_return (invoke "f" (i32.const 0)) (i32.const -1))
(assert_return (invoke "f" (i32.const 1)) (i32.const 2))
(assert_return (invoke "f" (i32.const 22)) (i32.const 44))
