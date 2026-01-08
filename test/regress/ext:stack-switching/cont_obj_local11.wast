;; Test: cont.bind binding multiple params at once through local
(module
  (type $f1 (func (param i32 i32 i32) (result i32)))
  (type $f2 (func (param i32) (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (func $mul_add (param i32 i32 i32) (result i32)
    ;; (a * b) + c
    (i32.add (i32.mul (local.get 0) (local.get 1)) (local.get 2))
  )
  (elem declare func $mul_add)

  (func (export "main") (result i32)
    (local $c (ref null $c2))
    ;; Bind first two params: 6 * 7 + c
    (local.set $c (cont.bind $c1 $c2 (i32.const 6) (i32.const 7) (cont.new $c1 (ref.func $mul_add))))
    ;; Resume with c = 0 -> 42
    (resume $c2 (i32.const 0) (local.get $c))
  )
)

(assert_return (invoke "main") (i32.const 42))
