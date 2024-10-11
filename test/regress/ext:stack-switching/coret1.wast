(module
  (type $f1 (func (param i32) (result f64)))
  (type $c1 (cont $f1))

  (tag $s (param f32) (result i32 i32))

  (func $add (param i32) (result f64)
     (local $sum f32)
     (local.get 0)
     (loop (param i32)
        (f32.convert_i32_s)
        (local.set $sum (f32.add (local.get $sum)))
	(suspend $s (local.get $sum))
	(br_if 0)
	drop
     )
     (f64.promote_f32 (local.get $sum))
  )

  (elem declare func $add)

  (func (export "main") (param i32) (result f64)
    (local $x1 (ref $c1))
    (local.set $x1 (cont.new $c1 (ref.func $add)))
    (loop (result f64)
      (resume $c1 (i32.const 0) (local.get $x1))
    )
  )
)

(assert_suspension (invoke "main" (i32.const 0)) "unhandled tag")
