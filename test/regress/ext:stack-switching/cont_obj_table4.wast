;; Test: cont.bind on null table slot traps
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (table $t 5 (ref null $c1))

  (func (export "main") (result i32)
    (resume $c2 (cont.bind $c1 $c2 (i32.const 10) (table.get $t (i32.const 0))))
  )
)

(assert_trap (invoke "main") "null continuation")
