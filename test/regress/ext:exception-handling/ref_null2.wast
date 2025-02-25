(module
  (func (param (ref noexn)) (result (ref null noexn))
    local.get 0
  )
  (func (export "foo"))
)

(assert_return (invoke "foo"))
