;; A function with three locals using the abbreviated reftype encodings
;; CONTREF (0x68), NULLCONTREF (0x75), and NULLEXNREF (0x74). Each local
;; is default-initialized to null; the result is a 3-bit mask where each
;; bit reports whether the corresponding local is null. All three should
;; be null, so the mask is 0b111 = 7.
(module
  (func (export "main") (result i32)
    (local (ref null cont))
    (local (ref null nocont))
    (local (ref null noexn))
    (i32.or
      (i32.or
        (ref.is_null (local.get 0))
        (i32.shl (ref.is_null (local.get 1)) (i32.const 1)))
      (i32.shl (ref.is_null (local.get 2)) (i32.const 2)))
  )
)

(assert_return (invoke "main") (i32.const 7))
