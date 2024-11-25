;; Test round-tripping (f32) through a continuation works.
(module
  (type $f_f (func (param f32) (result f32)))
  (type $k_f_f (cont $f_f))

  (func $f_f_f (param f32) (result f32)
    (f32.sub (local.get 0) (f32.const 111))  ;; not identity
  )

  (elem declare func $f_f_f)

  (func (export "call_f_f") (param f32) (result f32)
    (resume $k_f_f (local.get 0) (cont.new $k_f_f (ref.func $f_f_f)))
  )
)

(assert_return (invoke "call_f_f" (f32.const 444)) (f32.const 333))
(assert_return (invoke "call_f_f" (f32.const 666)) (f32.const 555))
