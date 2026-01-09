;; Test: cont.bind on null local continuation traps
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (func (export "main") (result i32)
    (local $c (ref null $c1))
    (resume $c2 (cont.bind $c1 $c2 (i32.const 10) (local.get $c)))
  )
)

(assert_trap (invoke "main") "null continuation")
