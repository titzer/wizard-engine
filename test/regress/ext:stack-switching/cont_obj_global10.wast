;; Test: multiple sequential cont.bind through globals
(module
  (type $f1 (func (param i32 i32 i32) (result i32)))
  (type $f2 (func (param i32 i32) (result i32)))
  (type $f3 (func (param i32) (result i32)))
  (type $f4 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))
  (type $c3 (cont $f3))
  (type $c4 (cont $f4))

  (global $g1 (mut (ref null $c1)) (ref.null $c1))
  (global $g2 (mut (ref null $c2)) (ref.null $c2))
  (global $g3 (mut (ref null $c3)) (ref.null $c3))
  (global $g4 (mut (ref null $c4)) (ref.null $c4))

  (func $sum3 (param i32 i32 i32) (result i32)
    (i32.add (i32.add (local.get 0) (local.get 1)) (local.get 2))
  )
  (elem declare func $sum3)

  (func (export "main") (result i32)
    (global.set $g1 (cont.new $c1 (ref.func $sum3)))
    (global.set $g2 (cont.bind $c1 $c2 (i32.const 10) (global.get $g1)))
    (global.set $g3 (cont.bind $c2 $c3 (i32.const 20) (global.get $g2)))
    (global.set $g4 (cont.bind $c3 $c4 (i32.const 12) (global.get $g3)))
    (resume $c4 (global.get $g4))
  )
)

(assert_return (invoke "main") (i32.const 42))
