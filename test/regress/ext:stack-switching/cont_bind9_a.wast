(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (type $f2 (func (param i32) (result i32)))
  (type $c2 (cont $f2))

  (type $f3 (func (param i64 i32) (result i32)))
  (type $c3 (cont $f3))

  (func $sub (param i64 i32) (result i32) (i32.sub (i32.wrap_i64 (local.get 0)) (local.get 1)))
  (elem declare func $sub)

  (func (export "main") (param i64 i32) (result i32)
    (local $x3 (ref $c3))
    (local.set $x3 (cont.new $c3 (ref.func $sub)))

    (local.get 0)
    (local.get 1)
    (resume $c3 (local.get $x3))
  )
)

(assert_return (invoke "main" (i64.const 3) (i32.const 2)) (i32.const 1))

