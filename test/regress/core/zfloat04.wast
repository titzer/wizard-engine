(module
   (func $f (export "f") (param f32 f32 i32) (result f32 f32)
     (local $a f32)
     local.get 0
     local.get 1
     drop
     drop
     (if (local.get 2)
       (then
         local.get 0
         local.tee $a
         local.get 1
         local.set 0
         local.set 1
       )
       (else
         local.get 0
         local.tee $a
         local.get 1
         local.set 1
         local.set 0
       )
     )
     local.get 0
     local.get 1
   )
)


(assert_return (invoke "f" (f32.const 1.1) (f32.const 2.2) (i32.const 0)) (f32.const 1.1) (f32.const 2.2))

(assert_return (invoke "f" (f32.const 3.3) (f32.const 4.4) (i32.const 1)) (f32.const 4.4) (f32.const 3.3))
