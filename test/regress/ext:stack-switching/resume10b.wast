;; Test round-tripping f32 through a continuation works.
(module
  (type $f_f (func (param f32) (result f32)))
  (type $k_f_f (cont $f_f))

  (func $id_f_f (param f32) (result f32) (local.get 0))

  (elem declare func $id_f_f)

  (func (export "call_f_f") (param f32) (result f32)
    (resume $k_f_f (local.get 0) (cont.new $k_f_f (ref.func $id_f_f)))
  )
)

(assert_return (invoke "call_f_f" (f32.const 2.0)) (f32.const 2.0))
(assert_return (invoke "call_f_f" (f32.const 3.0)) (f32.const 3.0))

;; TODO: host references?
;;(assert_return (invoke "call_f_f" (ref.host 0)) (ref.host 0))
;;(assert_return (invoke "call_f_f" (ref.host 1)) (ref.host 1))
