(module
  ;; Iterative factorial
  (func (export "fac-iter") (param i64) (result i64)
    (local i64 i64)
    (local.set 1 (local.get 0))
    (local.set 2 (i64.const 1))
    (block
      (loop
        (if
          (i64.eq (local.get 1) (i64.const 0))
          (then (br 2))
          (else
            (local.set 2 (i64.mul (local.get 1) (local.get 2)))
            (local.set 1 (i64.sub (local.get 1) (i64.const 1)))
          )
        )
        (br 0)
      )
    )
    (local.get 2)
  )
)

(assert_return (invoke "fac-iter" (i64.const 0)) (i64.const 1))
(assert_return (invoke "fac-iter" (i64.const 1)) (i64.const 1))
(assert_return (invoke "fac-iter" (i64.const 2)) (i64.const 2))
(assert_return (invoke "fac-iter" (i64.const 3)) (i64.const 6))
(assert_return (invoke "fac-iter" (i64.const 4)) (i64.const 24))
(assert_return (invoke "fac-iter" (i64.const 5)) (i64.const 120))

(assert_return (invoke "fac-iter" (i64.const 25)) (i64.const 7034535277573963776))
