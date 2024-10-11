(module
  (type $f1 (func (result i32 i32)))
  (type $c1 (cont $f1))
  (func $f42 (result i32 i32) (i32.const 42) (i32.const 55))
  (func $cf42 (result i32 i32)
        (resume $c1 (cont.new $c1 (ref.func $f42)))
  )
  (elem declare func $f42 $cf42)
  (func (export "main") (result i32 i32)
    (resume $c1 (cont.new $c1 (ref.func $cf42)))
  )
)

(assert_return (invoke "main") (i32.const 42) (i32.const 55))
