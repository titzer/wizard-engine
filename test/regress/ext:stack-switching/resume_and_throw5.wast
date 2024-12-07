(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (tag $s)

  (func $add (result i32)
     (throw $s)
  )

  (elem declare func $add)

  (func (export "main")
    (cont.new $c1 (ref.func $add))
    (resume $c1)
    (drop)
  )
)

(assert_exception (invoke "main"))
