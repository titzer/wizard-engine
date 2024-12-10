(module
  (func (export "nonce"))
  (table 1 (ref func) (ref.func 0))
)

(assert_return (invoke "nonce"))
