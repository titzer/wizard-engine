;; Test: continuation returning another continuation reference
(module
  (type $inner_f (func (result i32)))
  (type $inner_c (cont $inner_f))
  (type $f (func (result (ref $inner_c))))
  (type $c (cont $f))

  (func $ret42 (result i32) (i32.const 42))
  (elem declare func $ret42)

  (func $make_cont (result (ref $inner_c))
    (cont.new $inner_c (ref.func $ret42))
  )
  (elem declare func $make_cont)

  (func (export "main") (result i32)
    (resume $inner_c (resume $c (cont.new $c (ref.func $make_cont))))
  )
)

(assert_return (invoke "main") (i32.const 42))
