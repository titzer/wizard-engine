(module
  (func (export "fence") (atomic.fence))
)
(assert_return (invoke "fence"))
