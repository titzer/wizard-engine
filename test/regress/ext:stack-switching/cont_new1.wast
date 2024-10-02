;; Check if cont.new produces a non-null reference value
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func $empty) (elem declare func $empty)
  (func (export "main") (param i32) (result i32)
    (ref.is_null
      (if (result (ref null $c1)) (local.get 0)
        (then (cont.new $c1 (ref.func $empty)))
        (else ref.null $c1)
      )
    )
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
(assert_return (invoke "main" (i32.const 1111)) (i32.const 0))
