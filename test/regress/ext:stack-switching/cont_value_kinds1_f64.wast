;; Test: continuation returning f64
(module
  (type $f (func (result f64)))
  (type $c (cont $f))

  (func $ret (result f64) (f64.const 2.718281828459045))
  (elem declare func $ret)

  (func (export "main") (result f64)
    (resume $c (cont.new $c (ref.func $ret)))
  )
)

(assert_return (invoke "main") (f64.const 2.718281828459045))
