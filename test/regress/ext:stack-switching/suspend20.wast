(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e (param i32))
  (func $s (suspend $e (i32.const 42)))
  (elem declare func $s)
  (func (export "main")
    (resume $c1 (cont.new $c1 (ref.func $s)))
  )
)

(assert_suspension (invoke "main") "unhandled")
