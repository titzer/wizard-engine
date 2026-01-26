;; Test: continuation returning funcref
(module
  (type $inner_f (func (result i32)))
  (type $f (func (result (ref $inner_f))))
  (type $c (cont $f))

  (func $ret42 (result i32) (i32.const 42))
  (elem declare func $ret42)

  (func $get_func (result (ref $inner_f))
    (ref.func $ret42)
  )
  (elem declare func $get_func)

  (func (export "main") (result i32)
    (call_ref $inner_f (resume $c (cont.new $c (ref.func $get_func))))
  )
)

(assert_return (invoke "main") (i32.const 42))
