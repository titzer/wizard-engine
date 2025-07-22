;; Check if cont.new produces a non-null reference value
(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))

  (func $print (import "spectest" "print_i32") (type $f1))

  (elem declare func $print)

  (func (export "main") (param i32) (result i32)
    (ref.is_null (call $alloc (local.get 0)))
  )
  (func $alloc (param i32) (result (ref null cont))
      (if (result (ref null $c1)) (local.get 0)
        (then (cont.new $c1 (ref.func $print)))
        (else ref.null $c1)
      )
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
(assert_return (invoke "main" (i32.const 1111)) (i32.const 0))
