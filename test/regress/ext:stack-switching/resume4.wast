(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))
  (func $f42 (result i32) (return (i32.const 42))) (elem declare func $f42)
  (func (export "main") (result i32)
    (resume $c1 (cont.new $c1 (ref.func $f42)))
  )
)

(assert_return (invoke "main") (i32.const 42))
