;; Test: successful cont.bind then resume through same table slot
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (table $t 5 (ref null $c2))

  (func $triple (param i32) (result i32)
    (i32.mul (local.get 0) (i32.const 3))
  )
  (elem declare func $triple)

  (func (export "main") (result i32)
    (table.set $t (i32.const 0)
      (cont.bind $c1 $c2 (i32.const 14) (cont.new $c1 (ref.func $triple))))
    (resume $c2 (table.get $t (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 42))
