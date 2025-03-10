(module
  (type $vec (array (mut f32)))

  (type $f (func (param i32 f32) (result (ref null $vec))))
  (type $c (cont $f))
  (type $f1 (func (param f32) (result (ref null $vec))))
  (type $c1 (cont $f1))
  (type $f2 (func (result (ref null $vec))))
  (type $c2 (cont $f2))
  (tag $tag (result f32))

  (func $foo (param i32 f32) (result (ref null $vec))
    (local $v (ref null $vec))
    (local $i i32)
    (local.set $v (array.new $vec (f32.const 0) (local.get 0)))

    (loop $l
      (local.get $v)
      (local.get $i)
      (suspend $tag)
      (array.set $vec)
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get 0)))
    )
    (local.get $v)
  )
  (elem declare func $foo)
  (func (export "main") (param i32) (result f32)
    (local $temp (ref null $c1))
    (local $v (ref null $vec))
    (local $sum f32)
    (local $i i32)

    (cont.bind $c $c1 (local.get 0) (cont.new $c (ref.func $foo)))

    (local.set $i (i32.const 0))
    (loop $l (param (ref null $c1)) (result (ref null $vec))
      (local.set $temp)
      (cont.bind $c1 $c2 (f32.convert_i32_u (local.get $i)) (local.get $temp))
      (local.set $i (i32.add (i32.const 1) (local.get $i)))
      (resume $c2 (on $tag $l))
    )
    
    (local.set $v)
    (local.set $sum (f32.const 0))
    (local.set $i (i32.const 0))
    (loop $l
      (array.get $vec (local.get $v) (local.get $i))
      (f32.add (local.get $sum))
      (local.set $sum)
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get 0)))
    )

    (local.get $sum)
  )
)

(assert_return (invoke "main" (i32.const 1)) (f32.const 1))
(assert_return (invoke "main" (i32.const 2)) (f32.const 3))
(assert_return (invoke "main" (i32.const 3)) (f32.const 6))
(assert_return (invoke "main" (i32.const 4)) (f32.const 10))
(assert_return (invoke "main" (i32.const 5)) (f32.const 15))
(assert_return (invoke "main" (i32.const 6)) (f32.const 21))
(assert_return (invoke "main" (i32.const 7)) (f32.const 28))
(assert_return (invoke "main" (i32.const 8)) (f32.const 36))
(assert_return (invoke "main" (i32.const 9)) (f32.const 45))
(assert_return (invoke "main" (i32.const 10)) (f32.const 55))
(assert_return (invoke "main" (i32.const 11)) (f32.const 66))
(assert_return (invoke "main" (i32.const 12)) (f32.const 78))
(assert_return (invoke "main" (i32.const 13)) (f32.const 91))
(assert_return (invoke "main" (i32.const 14)) (f32.const 105))
(assert_return (invoke "main" (i32.const 15)) (f32.const 120))
(assert_return (invoke "main" (i32.const 16)) (f32.const 136))
(assert_return (invoke "main" (i32.const 17)) (f32.const 153))
(assert_return (invoke "main" (i32.const 18)) (f32.const 171))
(assert_return (invoke "main" (i32.const 19)) (f32.const 190))
(assert_return (invoke "main" (i32.const 20)) (f32.const 210))
(assert_return (invoke "main" (i32.const 21)) (f32.const 231))
(assert_return (invoke "main" (i32.const 22)) (f32.const 253))
(assert_return (invoke "main" (i32.const 23)) (f32.const 276))
(assert_return (invoke "main" (i32.const 24)) (f32.const 300))
(assert_return (invoke "main" (i32.const 25)) (f32.const 325))
(assert_return (invoke "main" (i32.const 26)) (f32.const 351))
(assert_return (invoke "main" (i32.const 27)) (f32.const 378))
(assert_return (invoke "main" (i32.const 28)) (f32.const 406))
(assert_return (invoke "main" (i32.const 29)) (f32.const 435))
