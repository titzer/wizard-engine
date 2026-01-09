;; Test: continuation returning i64
(module
  (type $f (func (result i64)))
  (type $c (cont $f))

  (func $ret (result i64) (i64.const 0x123456789ABCDEF0))
  (elem declare func $ret)

  (func (export "main") (result i64)
    (resume $c (cont.new $c (ref.func $ret)))
  )
)

(assert_return (invoke "main") (i64.const 0x123456789ABCDEF0))
