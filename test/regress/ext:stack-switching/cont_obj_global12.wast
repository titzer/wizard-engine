;; Test: two globals, use each once successfully
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (global $g1 (mut (ref null $c1)) (ref.null $c1))
  (global $g2 (mut (ref null $c1)) (ref.null $c1))

  (func $ret10 (result i32) (i32.const 10))
  (func $ret32 (result i32) (i32.const 32))
  (elem declare func $ret10 $ret32)

  (func (export "main") (result i32)
    (global.set $g1 (cont.new $c1 (ref.func $ret10)))
    (global.set $g2 (cont.new $c1 (ref.func $ret32)))
    (i32.add
      (resume $c1 (global.get $g1))
      (resume $c1 (global.get $g2))
    )
  )
)

(assert_return (invoke "main") (i32.const 42))
