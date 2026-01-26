;; Test: cont.bind with struct argument
(module
  (type $point (struct (field $x i32) (field $y i32)))
  (type $f1 (func (param (ref $point)) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (func $sum_point (param (ref $point)) (result i32)
    (i32.add (struct.get $point $x (local.get 0)) (struct.get $point $y (local.get 0)))
  )
  (elem declare func $sum_point)

  (func (export "main") (result i32)
    (resume $c2
      (cont.bind $c1 $c2
        (struct.new $point (i32.const 17) (i32.const 25))
        (cont.new $c1 (ref.func $sum_point))))
  )
)

(assert_return (invoke "main") (i32.const 42))
