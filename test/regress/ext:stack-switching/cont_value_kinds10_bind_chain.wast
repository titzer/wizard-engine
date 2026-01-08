;; Test: chained cont.bind with mixed types
(module
  (type $f1 (func (param i32 i32 i32 i32) (result i32)))
  (type $f2 (func (param i32 i32 i32) (result i32)))
  (type $f3 (func (param i32 i32) (result i32)))
  (type $f4 (func (param i32) (result i32)))
  (type $f5 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))
  (type $c3 (cont $f3))
  (type $c4 (cont $f4))
  (type $c5 (cont $f5))

  (func $sum4 (param i32 i32 i32 i32) (result i32)
    (i32.add (i32.add (i32.add (local.get 0) (local.get 1)) (local.get 2)) (local.get 3))
  )
  (elem declare func $sum4)

  (func (export "main") (result i32)
    ;; Bind one argument at a time: 10 + 11 + 12 + 9 = 42
    (resume $c5
      (cont.bind $c4 $c5 (i32.const 9)
        (cont.bind $c3 $c4 (i32.const 12)
          (cont.bind $c2 $c3 (i32.const 11)
            (cont.bind $c1 $c2 (i32.const 10)
              (cont.new $c1 (ref.func $sum4)))))))
  )
)

(assert_return (invoke "main") (i32.const 42))
