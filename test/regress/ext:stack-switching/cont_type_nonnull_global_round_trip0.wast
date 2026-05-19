;; Store a non-null cont in a global via init then via global.set, retrieve, is_null = 0.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (global $g (mut (ref null $ct)) (ref.null $ct))

  (func (export "main") (result i32)
    (global.set $g (cont.new $ct (ref.func $f)))
    (ref.is_null (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 0))
