;; Test: resume with f64 argument
(module
  (type $f (func (param f64) (result f64)))
  (type $c (cont $f))

  (func $sqrt (param f64) (result f64)
    (f64.sqrt (local.get 0))
  )
  (elem declare func $sqrt)

  (func (export "main") (result f64)
    (resume $c (f64.const 16.0) (cont.new $c (ref.func $sqrt)))
  )
)

(assert_return (invoke "main") (f64.const 4.0))
