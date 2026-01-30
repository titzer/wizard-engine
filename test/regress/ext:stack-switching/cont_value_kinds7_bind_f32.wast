;; Test: cont.bind with f32 argument
(module
  (type $f1 (func (param f32) (result f32)))
  (type $f2 (func (result f32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (func $square (param f32) (result f32)
    (f32.mul (local.get 0) (local.get 0))
  )
  (elem declare func $square)

  (func (export "main") (result f32)
    (resume $c2 (cont.bind $c1 $c2 (f32.const 3.0) (cont.new $c1 (ref.func $square))))
  )
)

(assert_return (invoke "main") (f32.const 9.0))
