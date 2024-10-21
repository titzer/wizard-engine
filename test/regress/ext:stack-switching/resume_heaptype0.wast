(module
  (type $s (struct (field i32) (field i32)))
  (type $f (func (param (ref null $s)) (result i32)))
  (type $c (cont $f))

  (func $foo (param (ref null $s)) (result i32)
    (struct.get $s 0 (local.get 0))
  )
  (elem declare func $foo)
  (func (export "get_0") (result i32)
    (struct.new $s (i32.const 42) (i32.const 24))
    (resume $c (cont.new $c (ref.func $foo)))
  )
)

(assert_return (invoke "get_0") (i32.const 42))
