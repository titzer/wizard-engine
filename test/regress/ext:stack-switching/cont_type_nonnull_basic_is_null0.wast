;; cont.new produces a non-null cont, ref.is_null returns 0.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "main") (result i32)
    (ref.is_null (cont.new $ct (ref.func $f)))
  )
)

(assert_return (invoke "main") (i32.const 0))
