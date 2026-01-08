;; Test: continuation returning f64 special values
(module
  (type $f (func (result f64 f64 f64)))
  (type $c (cont $f))

  (func $ret (result f64 f64 f64)
    (f64.const inf)
    (f64.const -inf)
    (f64.const 0.0)
  )
  (elem declare func $ret)

  (func (export "main") (result f64 f64 f64)
    (resume $c (cont.new $c (ref.func $ret)))
  )
)

(assert_return (invoke "main") (f64.const inf) (f64.const -inf) (f64.const 0.0))
