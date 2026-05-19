;; A table whose element type is the abbreviated `(ref null noexn)` reftype
;; (encoded as a single byte 0x74). Tests NULLEXNREF as a table element type.
(module
  (table 1 (ref null noexn))
  (func (export "main") (result i32) (i32.const 0))
)

(assert_return (invoke "main") (i32.const 0))
