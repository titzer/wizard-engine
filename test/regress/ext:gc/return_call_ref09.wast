(module
  (type $i64-i64 (func (param i64) (result i64)))
  
  (global $even (ref $i64-i64) (ref.func $even))
  (global $odd (ref $i64-i64) (ref.func $odd))

  (elem declare func $even)
  (func $even (export "even") (param i64) (result i64)
    (if (result i64) (i64.eqz (local.get 0))
      (then (i64.const 44))
      (else
        (return_call_ref $i64-i64
          (i64.sub (local.get 0) (i64.const 1))
          (global.get $odd)
        )
      )
    )
  )
  (elem declare func $odd)
  (func $odd (export "odd") (param i64) (result i64)
    (if (result i64) (i64.eqz (local.get 0))
      (then (i64.const 99))
      (else
        (return_call_ref $i64-i64
          (i64.sub (local.get 0) (i64.const 1))
          (global.get $even)
        )
      )
    )
  )
)

(assert_return (invoke "even" (i64.const 0)) (i64.const 44))
(assert_return (invoke "even" (i64.const 1)) (i64.const 99))
(assert_return (invoke "even" (i64.const 100)) (i64.const 44))
(assert_return (invoke "even" (i64.const 77)) (i64.const 99))
(assert_return (invoke "even" (i64.const 1_000)) (i64.const 44))
(assert_return (invoke "even" (i64.const 1_001)) (i64.const 99))
(assert_return (invoke "odd" (i64.const 0)) (i64.const 99))
(assert_return (invoke "odd" (i64.const 1)) (i64.const 44))
(assert_return (invoke "odd" (i64.const 200)) (i64.const 99))
(assert_return (invoke "odd" (i64.const 77)) (i64.const 44))
(assert_return (invoke "odd" (i64.const 1_000)) (i64.const 99))
(assert_return (invoke "odd" (i64.const 999)) (i64.const 44))
