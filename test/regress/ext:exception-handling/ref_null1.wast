(module
  (func (export "main") (result (ref null noexn))
    (ref.null noexn)
  )
)

(assert_return (invoke "main") (ref.null exn))
