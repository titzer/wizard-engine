(module
  (type $f1 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (func $add42 (param i32) (result i32)
    (i32.add (local.get 0) (i32.const 42)))
  (elem declare func $add42)
  (func (export "main") (result i32)
    (resume $c1 (i32.const 21) (cont.new $c1 (ref.func $add42)))
  )
)

(assert_return (invoke "main") (i32.const 63))
