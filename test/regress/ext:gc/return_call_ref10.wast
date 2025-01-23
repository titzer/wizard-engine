(module
  (type $i64-i64 (func (param i64) (result i64)))
  (global $count (ref $i64-i64) (ref.func $count))

  (elem declare func $count)
  (func $count (export "count") (param i64) (result i64)
    (if (result i64) (i64.eqz (local.get 0))
      (then (local.get 0))
      (else
        (return_call_ref $i64-i64
          (i64.sub (local.get 0) (i64.const 1))
          (global.get $count)
        )
      )
    )
  )
)

(assert_return (invoke "count" (i64.const 0)) (i64.const 0))
(assert_return (invoke "count" (i64.const 1000)) (i64.const 0))
(assert_return (invoke "count" (i64.const 10_000)) (i64.const 0))

