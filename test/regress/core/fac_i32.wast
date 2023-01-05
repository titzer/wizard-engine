(module
  ;; Iterative factorial
  (func (export "fac-iter") (param i32) (result i32)
    (local i32 i32)
    (local.set 1 (local.get 0))
    (local.set 2 (i32.const 1))
    (block
      (loop
        (if
          (i32.eq (local.get 1) (i32.const 0))
          (then (br 2))
          (else
            (local.set 2 (i32.mul (local.get 1) (local.get 2)))
            (local.set 1 (i32.sub (local.get 1) (i32.const 1)))
          )
        )
        (br 0)
      )
    )
    (local.get 2)
  )
)

(assert_return (invoke "fac-iter" (i32.const 0)) (i32.const 1))
(assert_return (invoke "fac-iter" (i32.const 1)) (i32.const 1))
(assert_return (invoke "fac-iter" (i32.const 2)) (i32.const 2))
(assert_return (invoke "fac-iter" (i32.const 3)) (i32.const 6))
(assert_return (invoke "fac-iter" (i32.const 4)) (i32.const 24))
(assert_return (invoke "fac-iter" (i32.const 5)) (i32.const 120))
(assert_return (invoke "fac-iter" (i32.const 10)) (i32.const 3628800))
(assert_return (invoke "fac-iter" (i32.const 15)) (i32.const 2004310016))
