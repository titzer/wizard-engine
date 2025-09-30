(module
  (type $f1 (func))
  (tag $t (param i32))
  (func $throw
    (throw $t (i32.const 47))
  )
  (elem declare func $throw)
  (func (export "main") (param i32) (result i32)
    (block (result i32)
      (try_table (catch $t 0)
        (call $throw)
      )
      (i32.const 22)
    )
  )
)

(assert_return (invoke "main" (i32.const 44)) (i32.const 47))
