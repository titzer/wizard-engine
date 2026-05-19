;; A default-initialized global of (ref null $ct) is null.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (global $g (mut (ref null $ct)) (ref.null $ct))

  (func (export "main") (result i32)
    (ref.is_null (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 1))
