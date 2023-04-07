;; Test `call_indirect` operator

(module
  (type $over-f32 (func (param f32) (result f32)))

  (table funcref
    (elem
      $fib-f32
    )
  )

  (func $fib-f32 (export "fib-f32") (type $over-f32)
    (if (result f32) (f32.le (local.get 0) (f32.const 1.0))
      (then (f32.const 1.0))
      (else
        (f32.add
          (call_indirect (type $over-f32)
            (f32.sub (local.get 0) (f32.const 2.0))
            (i32.const 0)
          )
          (call_indirect (type $over-f32)
            (f32.sub (local.get 0) (f32.const 1.0))
            (i32.const 0)
          )
        )
      )
    )
  )
)

(assert_return (invoke "fib-f32" (f32.const 0.0)) (f32.const 1.0))
(assert_return (invoke "fib-f32" (f32.const 1.0)) (f32.const 1.0))
(assert_return (invoke "fib-f32" (f32.const 2.0)) (f32.const 2.0))
(assert_return (invoke "fib-f32" (f32.const 5.0)) (f32.const 8.0))
(assert_return (invoke "fib-f32" (f32.const 20.0)) (f32.const 10946.0))
