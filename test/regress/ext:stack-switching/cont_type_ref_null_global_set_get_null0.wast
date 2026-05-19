;; global.set with ref.null then global.get returns null (concrete cont type).
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (global $g (mut (ref null $ct)) (ref.null $ct))

  (func (export "main") (result i32)
    (global.set $g (ref.null $ct))
    (ref.is_null (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 1))
