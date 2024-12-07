;; Test round-tripping f32 through a continuation works.
(module
  (type $ff_f (func (param f32 f32) (result f32)))
  (type $k_ff_f (cont $ff_f))

  (func $id_ff_f (param f32 f32) (result f32) (f32.add (local.get 0) (local.get 1)))

  (elem declare func $id_ff_f)

  (func (export "call_ff_f") (param f32 f32) (result f32)
    (resume $k_ff_f (local.get 0) (local.get 1) (cont.new $k_ff_f (ref.func $id_ff_f)))
  )
)

(assert_return (invoke "call_ff_f" (f32.const 2.0) (f32.const 3.0)) (f32.const 5.0))
(assert_return (invoke "call_ff_f" (f32.const 12.0) (f32.const 24.5)) (f32.const 36.5))

;; TODO: host references?
;;(assert_return (invoke "call_f_f" (ref.host 0)) (ref.host 0))
;;(assert_return (invoke "call_f_f" (ref.host 1)) (ref.host 1))
