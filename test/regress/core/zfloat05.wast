(module
   (func $f (export "f") (param f32 f32 f32 i32) (result f32 f32)
     local.get 0
     local.get 2
     drop
     drop
     (if (local.get 3)
       (then
         local.get 0
         local.tee 1
         local.get 2
         local.tee 0
         local.set 1
         local.set 2
       )
       (else
         local.get 0
         local.tee 1
         local.get 2
         local.tee 2
         local.set 1
         local.set 0
       )
     )
     local.get 0
     local.get 1
   )
)


(assert_return (invoke "f" (f32.const 1.1) (f32.const 2.2) (f32.const 3.3) (i32.const 0)) (f32.const 1.1) (f32.const 3.3))

(assert_return (invoke "f" (f32.const 3.3) (f32.const 4.4) (f32.const 5.5) (i32.const 1)) (f32.const 5.5) (f32.const 5.5))
