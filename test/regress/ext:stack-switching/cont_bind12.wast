(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func $nop)
  (elem declare func $nop)

  (func (export "main")
    (local $cont (ref null $c1))
    (local.set $cont (cont.new $c1 (ref.func $nop)))
    (drop (cont.bind $c1 $c1 (local.get $cont)))
    (drop (cont.bind $c1 $c1 (local.get $cont)))
  )
)

(assert_trap (invoke "main") "continuation already consumed")
