;; Test: resume with i64 argument
(module
  (type $f (func (param i64) (result i64)))
  (type $c (cont $f))

  (func $shift (param i64) (result i64)
    (i64.shl (local.get 0) (i64.const 4))
  )
  (elem declare func $shift)

  (func (export "main") (result i64)
    (resume $c (i64.const 0x123456789) (cont.new $c (ref.func $shift)))
  )
)

(assert_return (invoke "main") (i64.const 0x1234567890))
