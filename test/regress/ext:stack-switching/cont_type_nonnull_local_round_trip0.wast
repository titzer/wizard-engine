;; Store a non-null cont in a local, retrieve it, ref.is_null returns 0.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "main") (result i32)
    (local $x (ref null $ct))
    (local.set $x (cont.new $ct (ref.func $f)))
    (ref.is_null (local.get $x))
  )
)

(assert_return (invoke "main") (i32.const 0))
