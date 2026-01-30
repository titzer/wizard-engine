;; Test: cont.bind binding multiple params at once through global
(module
  (type $f1 (func (param i32 i32 i32) (result i32)))
  (type $f2 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (global $g1 (mut (ref null $c1)) (ref.null $c1))
  (global $g2 (mut (ref null $c2)) (ref.null $c2))

  (func $mul_add (param i32 i32 i32) (result i32)
    ;; (a * b) + c
    (i32.add (i32.mul (local.get 0) (local.get 1)) (local.get 2))
  )
  (elem declare func $mul_add)

  (func (export "main") (result i32)
    (global.set $g1 (cont.new $c1 (ref.func $mul_add)))
    ;; Bind first two params: 6 * 7 + c
    (global.set $g2 (cont.bind $c1 $c2 (i32.const 6) (i32.const 7) (global.get $g1)))
    ;; Resume with c = 0 -> 42
    (resume $c2 (i32.const 0) (global.get $g2))
  )
)

(assert_return (invoke "main") (i32.const 42))
