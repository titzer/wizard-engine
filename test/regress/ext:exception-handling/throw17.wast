(module
  (type $f1 (func))
  (tag $t (param f32))
  (func $throw
    (throw $t (f32.const 3.25))
  )
  (elem declare func $throw)
  (func (export "main") (param f32) (result f32)
    (try_table (catch $t 0)
      (call $throw)
    )
    f32.const 42 ;; unreachable
  )
)

(assert_return (invoke "main" (f32.const 1.5)) (f32.const 3.25))
