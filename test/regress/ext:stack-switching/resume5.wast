(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (global $g (mut i32) (i32.const 15))
  (func $f42 (global.set $g (i32.const 42)))
  (elem declare func $f42)
  (func (export "main") (result i32)
    (resume $c1 (cont.new $c1 (ref.func $f42)))
    (global.get $g)
  )
)

(assert_return (invoke "main") (i32.const 42))
