;; Test: cont.bind on null global continuation traps
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (global $g (mut (ref null $c1)) (ref.null $c1))

  (func (export "main") (result i32)
    (resume $c2 (cont.bind $c1 $c2 (i32.const 10) (global.get $g)))
  )
)

(assert_trap (invoke "main") "null continuation")
