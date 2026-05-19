;; A function with a local of type `(ref null noexn)`. Tests that the
;; engine accepts NULLEXNREF as a local declaration value type code (in
;; particular, that the V3 interpreter's local-default-init path handles it).
(module
  (func (export "main") (result i32)
    (local (ref null noexn))
    (ref.is_null (local.get 0))
  )
)

(assert_return (invoke "main") (i32.const 1))
