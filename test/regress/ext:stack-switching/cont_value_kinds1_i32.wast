;; Test: continuation returning i32
(module
  (type $f (func (result i32)))
  (type $c (cont $f))

  (func $ret (result i32) (i32.const 42))
  (elem declare func $ret)

  (func (export "main") (result i32)
    (resume $c (cont.new $c (ref.func $ret)))
  )
)

(assert_return (invoke "main") (i32.const 42))
