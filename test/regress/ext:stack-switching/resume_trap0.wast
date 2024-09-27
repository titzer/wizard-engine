(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func $trap unreachable)
  (elem declare func $trap)
  (func (export "main")
    (resume $c1 (cont.new $c1 (ref.func $trap)))
  )
)

(assert_trap (invoke "main") "unreachable")
