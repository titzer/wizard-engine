(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func $empty) (elem declare func $empty)
  (func (export "main") (result i32)
    (cont.new $c1 (ref.func $empty))
    drop
    i32.const 42
  )
)

(assert_return (invoke "main") (i32.const 42))
