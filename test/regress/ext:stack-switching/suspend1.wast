(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e)
  (func $s (suspend $e))
  (elem declare func $s)
  (func (export "main")
    (block (result (ref null $c1))
      (resume $c1 (on $e 0) (cont.new $c1 (ref.func $s)))
      (ref.null $c1)
    )
    drop
  )
)

(assert_return (invoke "main"))
