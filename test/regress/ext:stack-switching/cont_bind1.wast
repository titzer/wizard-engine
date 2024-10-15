(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func $nop)
  (elem declare func $nop)

  (func (export "main")
    (cont.bind $c1 $c1 (cont.new $c1 (ref.func $nop)))
    drop
  )
)

(assert_return (invoke "main"))
