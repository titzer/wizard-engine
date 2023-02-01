(module
  (func (export "main") (result v128)
    (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15)
  )
)
(assert_return (invoke "main") (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))
