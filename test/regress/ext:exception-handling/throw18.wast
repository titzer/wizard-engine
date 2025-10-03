(module
  (type $f1 (func))
  (tag $t (param f64))
  (func $throw
    (throw $t (f64.const 6.022e23))
  )
  (elem declare func $throw)
  (func (export "main") (param f64) (result f64)
    (try_table (catch $t 0)
      (call $throw)
    )
    f64.const 42 ;; unreachable
  )
)

(assert_return (invoke "main" (f64.const 0.0)) (f64.const 6.022e23))
