(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (type $f2 (func (param i32) (result i32)))
  (type $c2 (cont $f2))

  (type $f3 (func (param i64 i32) (result i32)))
  (type $c3 (cont $f3))

  (func $sub (result i32) (i32.const 1))
  (elem declare func $sub)

  (func (export "main") (result i32)
    (local $x3 (ref $c1))
    (cont.new $c1 (ref.func $sub))
    (local.set $x3)
    (resume $c1 (local.get $x3))
  )
)

(assert_return (invoke "main") (i32.const 1))
