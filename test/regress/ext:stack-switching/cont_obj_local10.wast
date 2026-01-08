;; Test: multiple sequential cont.bind through same local
(module
  (type $f1 (func (param i32 i32 i32) (result i32)))
  (type $f2 (func (param i32 i32) (result i32)))
  (type $f3 (func (param i32) (result i32)))
  (type $f4 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))
  (type $c3 (cont $f3))
  (type $c4 (cont $f4))

  (func $sum3 (param i32 i32 i32) (result i32)
    (i32.add (i32.add (local.get 0) (local.get 1)) (local.get 2))
  )
  (elem declare func $sum3)

  (func (export "main") (result i32)
    (local $c (ref null $c4))
    (local.set $c
      (cont.bind $c3 $c4 (i32.const 12)
        (cont.bind $c2 $c3 (i32.const 20)
          (cont.bind $c1 $c2 (i32.const 10)
            (cont.new $c1 (ref.func $sum3))))))
    (resume $c4 (local.get $c))
  )
)

(assert_return (invoke "main") (i32.const 42))
