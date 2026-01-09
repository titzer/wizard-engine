;; Test: resume with continuation reference argument
(module
  (type $inner_f (func (result i32)))
  (type $inner_c (cont $inner_f))
  (type $f (func (param (ref $inner_c)) (result i32)))
  (type $c (cont $f))

  (func $ret42 (result i32) (i32.const 42))
  (elem declare func $ret42)

  (func $resume_it (param (ref $inner_c)) (result i32)
    (resume $inner_c (local.get 0))
  )
  (elem declare func $resume_it)

  (func (export "main") (result i32)
    (resume $c
      (cont.new $inner_c (ref.func $ret42))
      (cont.new $c (ref.func $resume_it)))
  )
)

(assert_return (invoke "main") (i32.const 42))
