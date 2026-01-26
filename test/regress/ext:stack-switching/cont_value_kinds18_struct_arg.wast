;; Test: resume with struct argument
(module
  (type $point (struct (field $x i32) (field $y i32)))
  (type $f (func (param (ref $point)) (result i32)))
  (type $c (cont $f))

  (func $sum_point (param (ref $point)) (result i32)
    (i32.add (struct.get $point $x (local.get 0)) (struct.get $point $y (local.get 0)))
  )
  (elem declare func $sum_point)

  (func (export "main") (result i32)
    (resume $c (struct.new $point (i32.const 20) (i32.const 22)) (cont.new $c (ref.func $sum_point)))
  )
)

(assert_return (invoke "main") (i32.const 42))
