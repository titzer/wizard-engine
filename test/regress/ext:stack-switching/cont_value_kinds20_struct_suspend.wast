;; Test: suspend with struct payload
(module
  (type $point (struct (field $x i32) (field $y i32)))
  (type $f (func (result i32)))
  (type $c (cont $f))

  (tag $t (param (ref $point)) (result (ref $point)))

  (func $inner (result i32)
    (local $p (ref $point))
    (local.set $p (suspend $t (struct.new $point (i32.const 1) (i32.const 2))))
    (i32.add (struct.get $point $x (local.get $p)) (struct.get $point $y (local.get $p)))
  )
  (elem declare func $inner)

  (func (export "main") (result i32)
    (local $p (ref $point))
    (block $h (result (ref $point) (ref $c))
      (resume $c (on $t $h) (cont.new $c (ref.func $inner)))
      (return)
    )
    (local.set $p)
    ;; modify and return: create new point with 20, 22
    (resume $c (struct.new $point (i32.const 20) (i32.const 22)))
  )
)

(assert_return (invoke "main") (i32.const 42))
