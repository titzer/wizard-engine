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
    (local $x2 (ref $c2))
    (local $x1 (ref $c1))
    (local.set $x3 (cont.new $c3 (ref.func $sub)))
    (local.set $x2 (cont.bind $c3 $c2 (local.get 0) (local.get $x3)))
    (local.set $x1 (cont.bind $c2 $c1 (local.get 1) (local.get $x2)))

    (resume $c1 (local.get $x1))
    (drop (resume $c2 (i32.const -9999) (local.get $x2)))
  )
)

(assert_trap (invoke "main" (i64.const 22) (i32.const 44)) "continuation already consumed")
(assert_trap (invoke "main" (i64.const -444) (i32.const 111)) "continuation already consumed")

