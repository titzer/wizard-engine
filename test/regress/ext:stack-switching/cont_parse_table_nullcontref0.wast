;; A table whose element type is the abbreviated `(ref null nocont)` reftype
;; (encoded as a single byte 0x75 in the binary form). Tests that the
;; engine accepts NULLCONTREF as a valid table element type code.
(module
  (table 1 (ref null nocont))
  (func (export "main") (result i32) (i32.const 0))
)

(assert_return (invoke "main") (i32.const 0))
