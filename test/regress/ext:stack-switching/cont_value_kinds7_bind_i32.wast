;; Test: cont.bind with i32 argument
(module
  (type $f1 (func (param i32) (result i32)))
  (type $f2 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))

  (func $double (param i32) (result i32)
    (i32.mul (local.get 0) (i32.const 2))
  )
  (elem declare func $double)

  (func (export "main") (result i32)
    (resume $c2 (cont.bind $c1 $c2 (i32.const 21) (cont.new $c1 (ref.func $double))))
  )
)

(assert_return (invoke "main") (i32.const 42))
