;; A default-initialized local of (ref null $ct) is null.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func (export "main") (result i32)
    (local $x (ref null $ct))
    (ref.is_null (local.get $x))
  )
)

(assert_return (invoke "main") (i32.const 1))
