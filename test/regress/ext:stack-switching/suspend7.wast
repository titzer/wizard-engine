(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e (param f64))
  (func $s (suspend $e (f64.const -5588)))
  (elem declare func $s)
  (func (export "main") (result f64)
    (block (result f64 (ref null $c1))
      (resume $c1 (on $e 0) (cont.new $c1 (ref.func $s)))
      (f64.const 44)
      (ref.null $c1)
    )
    drop
  )
)

(assert_return (invoke "main") (f64.const -5588))
