(module
  (type $f1 (func (param i32 i32) (result i32 i32)))
  (type $c1 (cont $f1))
  (func $add (param i32 i32) (result i32 i32)
    (i32.add (local.get 0) (i32.const 11))
    (i32.add (local.get 1) (i32.const 22))
  )
  (elem declare func $add)
  (func (export "main") (param i32 i32) (result i32 i32)
    (resume $c1 (local.get 0) (local.get 1) (cont.new $c1 (ref.func $add)))
  )
)

(assert_return (invoke "main" (i32.const 0) (i32.const 0)) (i32.const 11) (i32.const 22))
(assert_return (invoke "main" (i32.const 10) (i32.const -20)) (i32.const 21) (i32.const 2))

