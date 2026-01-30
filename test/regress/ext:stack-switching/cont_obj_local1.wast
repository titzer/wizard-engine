;; Test: simple continuation stored in local variable
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (func $f42 (result i32) (i32.const 42))
  (elem declare func $f42)

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (local.set $c (cont.new $c1 (ref.func $f42)))
    (resume $c1 (local.get $c))
  )
)

(assert_return (invoke "main") (i32.const 42))
