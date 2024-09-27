(module
  (type $f1 (func (result i32 i64)))
  (type $c1 (cont $f1))
  (func $f42 (result i32 i64) (i32.const -42) (i64.const -55))
  (elem declare func $f42)
  (func (export "main") (result i32 i64)
    (resume $c1 (cont.new $c1 (ref.func $f42)))
  )
)

(assert_return (invoke "main") (i32.const -42) (i64.const -55))
