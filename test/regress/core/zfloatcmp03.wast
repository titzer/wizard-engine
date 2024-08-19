(module
   (memory 1)
   (data (i32.const 0) "abcdefghijklmnopqrstuvwxyz")
   (func $f (export "f") (param f32 f32) (result i32)
     (local $f i32)
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (i32.reinterpret_f32 (local.get 0))
     (local.set $f (f32.le (local.get 0) (local.get 1)))
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

(assert_return (invoke "f" (f32.const 1.1) (f32.const 2.2)) (i32.const -1_217_187_016))
(assert_return (invoke "f" (f32.const 3.1) (f32.const 2.2)) (i32.const -986_080_878))
(assert_return (invoke "f" (f32.const 3.1) (f32.const nan)) (i32.const -986_080_878))
