;; Test: resume with funcref argument
(module
  (type $inner_f (func (result i32)))
  (type $f (func (param (ref $inner_f)) (result i32)))
  (type $c (cont $f))

  (func $ret42 (result i32) (i32.const 42))
  (elem declare func $ret42)

  (func $call_it (param (ref $inner_f)) (result i32)
    (call_ref $inner_f (local.get 0))
  )
  (elem declare func $call_it)

  (func (export "main") (result i32)
    (resume $c (ref.func $ret42) (cont.new $c (ref.func $call_it)))
  )
)

(assert_return (invoke "main") (i32.const 42))
