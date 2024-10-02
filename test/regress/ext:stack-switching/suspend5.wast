(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e (param i64))
  (func $s (suspend $e (i64.const -5588)))
  (elem declare func $s)
  (func (export "main") (result i64)
    (block (result i64 (ref null $c1))
      (resume $c1 (on $e 0) (cont.new $c1 (ref.func $s)))
      (i64.const 44)
      (ref.null $c1)
    )
    drop
  )
)

(assert_return (invoke "main") (i64.const -5588))
