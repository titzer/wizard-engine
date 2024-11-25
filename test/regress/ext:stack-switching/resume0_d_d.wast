;; Test round-tripping (f64) through a continuation works.
(module
  (type $d_d (func (param f64) (result f64)))
  (type $k_d_d (cont $d_d))

  (func $d_d_f (param f64) (result f64)
    (f64.sub (local.get 0) (f64.const 111))  ;; not identity
  )

  (elem declare func $d_d_f)

  (func (export "call_d_d") (param f64) (result f64)
    (resume $k_d_d (local.get 0) (cont.new $k_d_d (ref.func $d_d_f)))
  )
)

(assert_return (invoke "call_d_d" (f64.const 444)) (f64.const 333))
(assert_return (invoke "call_d_d" (f64.const 666)) (f64.const 555))
