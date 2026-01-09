;; Test: continuation returning multiple i32 values
(module
  (type $f (func (result i32 i32 i32)))
  (type $c (cont $f))

  (func $ret (result i32 i32 i32) (i32.const 10) (i32.const 20) (i32.const 12))
  (elem declare func $ret)

  (func (export "main") (result i32)
    (i32.add (i32.add (resume $c (cont.new $c (ref.func $ret)))))
  )
)

(assert_return (invoke "main") (i32.const 42))
