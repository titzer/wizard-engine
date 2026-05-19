;; Store a non-null cont in a table slot, retrieve it, is_null = 0.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (table $t 1 (ref null $ct))

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (cont.new $ct (ref.func $f)))
    (ref.is_null (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 0))
