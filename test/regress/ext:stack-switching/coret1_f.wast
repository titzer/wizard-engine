(module
  (type $f1 (func (result f64)))
  (type $c1 (cont $f1))

  (tag $s (param f32))

  (func $add (result f64)
     (suspend $s (f32.const 2))
     (f64.const 0)
  )

  (elem declare func $add)

  (func (export "main") (param i32)
    (loop
      (cont.new $c1 (ref.func $add))
      (resume $c1)
      (drop)
    )
  )
)

(assert_suspension (invoke "main" (i32.const 0)) "unhandled tag")
