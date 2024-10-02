(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (resume $c1 (cont.new $c1 (ref.func $empty)))
    i32.const 42
  )
)

(assert_return (invoke "main") (i32.const 42))
