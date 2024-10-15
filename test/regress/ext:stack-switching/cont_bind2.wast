(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func $nop)
  (elem declare func $nop)

  (func (export "main")
    (resume $c1 (cont.bind $c1 $c1 (cont.new $c1 (ref.func $nop))))
  )
)

(assert_return (invoke "main"))
