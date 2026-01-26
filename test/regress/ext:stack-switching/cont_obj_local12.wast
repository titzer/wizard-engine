;; Test: two locals, use each once successfully
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (func $ret10 (result i32) (i32.const 10))
  (func $ret32 (result i32) (i32.const 32))
  (elem declare func $ret10 $ret32)

  (func (export "main") (result i32)
    (local $c1 (ref null $c1))
    (local $c2 (ref null $c1))
    (local.set $c1 (cont.new $c1 (ref.func $ret10)))
    (local.set $c2 (cont.new $c1 (ref.func $ret32)))
    (i32.add
      (resume $c1 (local.get $c1))
      (resume $c1 (local.get $c2))
    )
  )
)

(assert_return (invoke "main") (i32.const 42))
