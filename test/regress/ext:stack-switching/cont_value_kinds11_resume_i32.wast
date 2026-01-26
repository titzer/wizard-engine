;; Test: resume with i32 argument
(module
  (type $f (func (param i32) (result i32)))
  (type $c (cont $f))

  (func $double (param i32) (result i32)
    (i32.mul (local.get 0) (i32.const 2))
  )
  (elem declare func $double)

  (func (export "main") (result i32)
    (resume $c (i32.const 21) (cont.new $c (ref.func $double)))
  )
)

(assert_return (invoke "main") (i32.const 42))
