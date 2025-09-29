(module
  (type $f1 (func))
  (tag $t (param i32 f32))
  (func $throw
    (throw $t (i32.const 77) (f32.const 1.75))
  )
  (elem declare func $throw)
  (func (export "main") (param i32) (result i32 f32)
    (try_table (catch $t 0)
      (call $throw)
    )
    i32.const 0
    f32.const 0 ;; unreachable
  )
)

(assert_return (invoke "main" (i32.const 11)) (i32.const 77) (f32.const 1.75))
