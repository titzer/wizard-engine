(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (global $g (mut i32) (i32.const 15))
  (func $f42 (global.set $g (i32.const 42)))
  (elem declare func $f42)
  (func (export "main") (result i32)
    (local $x (ref $c1))
    (local.set $x (cont.new $c1 (ref.func $f42)))
    (resume $c1 (local.get $x))
    (global.get $g)
    (resume $c1 (local.get $x)) ;; must trap
  )
)

(assert_trap (invoke "main") "continuation already consumed")
