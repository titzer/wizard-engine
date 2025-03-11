(module
  (memory 1 1)
  (data (i32.const 0) "abcdefghijklmnopqrstuvwxyz")

  (func (export "main")
    (i32.store (i32.const 1) (i32.load (i32.const 0)))
    (i64.store (i32.const 2) (i64.load (i32.const 0)))
    (f32.store (i32.const 3) (f32.load (i32.const 0)))
    (f64.store (i32.const 4) (f64.load (i32.const 0)))
    (v128.store (i32.const 5) (v128.load (i32.const 0)))
  )
)
