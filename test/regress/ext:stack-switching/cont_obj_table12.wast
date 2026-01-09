;; Test: multiple table slots, use each once successfully
(module
  (type $f1 (func (result i32)))
  (type $c1 (cont $f1))

  (table $t 5 (ref null $c1))

  (func $ret10 (result i32) (i32.const 10))
  (func $ret15 (result i32) (i32.const 15))
  (func $ret17 (result i32) (i32.const 17))
  (elem declare func $ret10 $ret15 $ret17)

  (func (export "main") (result i32)
    (table.set $t (i32.const 0) (cont.new $c1 (ref.func $ret10)))
    (table.set $t (i32.const 1) (cont.new $c1 (ref.func $ret15)))
    (table.set $t (i32.const 2) (cont.new $c1 (ref.func $ret17)))
    (i32.add
      (i32.add
        (resume $c1 (table.get $t (i32.const 0)))
        (resume $c1 (table.get $t (i32.const 1))))
      (resume $c1 (table.get $t (i32.const 2))))
  )
)

(assert_return (invoke "main") (i32.const 42))
