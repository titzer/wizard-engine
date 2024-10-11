(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (type $f2 (func (param i32) (result i32)))
  (type $c2 (cont $f2))

  (func $add44 (param i32) (result i32) (i32.add (local.get 0) (i32.const 44)))
  (elem declare func $add44)

  (func (export "main") (param i32) (result i32)
    (resume $c1
      (cont.bind $c2 $c1
        (local.get 0)
        (cont.new $c2 (ref.func $add44))))
  )
)

(assert_return (invoke "main" (i32.const 22)) (i32.const 66))
(assert_return (invoke "main" (i32.const -444)) (i32.const -400))

