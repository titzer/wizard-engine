;; Test: interleaved cont.bind and resume operations through global
(module
  (type $f1 (func (param i32 i32) (result i32)))
  (type $f2 (func (param i32) (result i32)))
  (type $f3 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))
  (type $c3 (cont $f3))

  (global $g (mut (ref null $c3)) (ref.null $c3))

  (func $compute (param i32 i32) (result i32)
    ;; (a + 2) * b
    (i32.mul (i32.add (local.get 0) (i32.const 2)) (local.get 1))
  )
  (elem declare func $compute)

  (func (export "main") (result i32)
    ;; Create, bind first param (5), bind second param (6), resume
    ;; Result: (5 + 2) * 6 = 42
    (global.set $g
      (cont.bind $c2 $c3 (i32.const 6)
        (cont.bind $c1 $c2 (i32.const 5)
          (cont.new $c1 (ref.func $compute)))))
    (resume $c3 (global.get $g))
  )
)

(assert_return (invoke "main") (i32.const 42))
