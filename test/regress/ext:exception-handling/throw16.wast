(module
  (type $f1 (func))
  (tag $t (param i64))
  (func $throw
    (throw $t (i64.const 9999999999))
  )
  (elem declare func $throw)
  (func (export "main") (param i64) (result i64)
    (try_table (catch $t 0)
      (call $throw)
    )
    i64.const 42 ;; unreachable
  )
)

(assert_return (invoke "main" (i64.const 123)) (i64.const 9999999999))
