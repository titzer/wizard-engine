(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e (param f32))
  (func $s (suspend $e (f32.const -5588)))
  (elem declare func $s)
  (func (export "main") (result f32)
    (block (result f32 (ref null $c1))
      (resume $c1 (on $e 0) (cont.new $c1 (ref.func $s)))
      (f32.const 44)
      (ref.null $c1)
    )
    drop
  )
)

(assert_return (invoke "main") (f32.const -5588))
