(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e (param i32))
  (func $s (suspend $e (i32.const 55)))
  (elem declare func $s)
  (func (export "main") (result i32)
    (block (result i32 (ref null $c1))
      (resume $c1 (on $e 0) (cont.new $c1 (ref.func $s)))
      (i32.const 44)
      (ref.null $c1)
    )
    drop
  )
)

(assert_return (invoke "main") (i32.const 55))
