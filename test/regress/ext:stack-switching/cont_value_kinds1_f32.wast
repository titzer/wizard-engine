;; Test: continuation returning f32
(module
  (type $f (func (result f32)))
  (type $c (cont $f))

  (func $ret (result f32) (f32.const 3.14159))
  (elem declare func $ret)

  (func (export "main") (result f32)
    (resume $c (cont.new $c (ref.func $ret)))
  )
)

(assert_return (invoke "main") (f32.const 3.14159))
