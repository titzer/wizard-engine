;; Test: sequential cont.bind storing intermediate results in different table slots
(module
  (type $f1 (func (param i32 i32 i32) (result i32)))
  (type $f2 (func (param i32 i32) (result i32)))
  (type $f3 (func (param i32) (result i32)))
  (type $f4 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))
  (type $c3 (cont $f3))
  (type $c4 (cont $f4))

  (table $t1 5 (ref null $c1))
  (table $t2 5 (ref null $c2))
  (table $t3 5 (ref null $c3))
  (table $t4 5 (ref null $c4))

  (func $sum3 (param i32 i32 i32) (result i32)
    (i32.add (i32.add (local.get 0) (local.get 1)) (local.get 2))
  )
  (elem declare func $sum3)

  (func (export "main") (result i32)
    (table.set $t1 (i32.const 0) (cont.new $c1 (ref.func $sum3)))
    (table.set $t2 (i32.const 0) (cont.bind $c1 $c2 (i32.const 10) (table.get $t1 (i32.const 0))))
    (table.set $t3 (i32.const 0) (cont.bind $c2 $c3 (i32.const 20) (table.get $t2 (i32.const 0))))
    (table.set $t4 (i32.const 0) (cont.bind $c3 $c4 (i32.const 12) (table.get $t3 (i32.const 0))))
    (resume $c4 (table.get $t4 (i32.const 0)))
  )
)

(assert_return (invoke "main") (i32.const 42))
