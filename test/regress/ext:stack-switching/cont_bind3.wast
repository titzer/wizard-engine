(module
  (type $f1 (func))
  (type $c1 (cont $f1))

  (type $f2 (func (param i32)))
  (type $c2 (cont $f2))

  (global $g1 (mut i32) (i32.const 11))

  (func $set (param i32) (global.set $g1 (local.get 0)))
  (elem declare func $set)

  (func (export "main") (param i32) (result i32)
    (resume $c1
      (cont.bind $c2 $c1
        (local.get 0)
        (cont.new $c2 (ref.func $set))))
    (global.get $g1)
  )
)

(assert_return (invoke "main" (i32.const 22)) (i32.const 22))
(assert_return (invoke "main" (i32.const -444)) (i32.const -444))

