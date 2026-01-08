;; Test: continuation returning struct reference
(module
  (type $point (struct (field $x i32) (field $y i32)))
  (type $f (func (result (ref $point))))
  (type $c (cont $f))

  (func $make_point (result (ref $point))
    (struct.new $point (i32.const 10) (i32.const 32))
  )
  (elem declare func $make_point)

  (func (export "main") (result i32)
    (local $p (ref $point))
    (local.set $p (resume $c (cont.new $c (ref.func $make_point))))
    (i32.add (struct.get $point $x (local.get $p)) (struct.get $point $y (local.get $p)))
  )
)

(assert_return (invoke "main") (i32.const 42))
