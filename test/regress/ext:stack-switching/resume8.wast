;; Test round-tripping floats through a continuation works.
(module
  (type $f_f (func (param f32) (result f32)))
  (type $k_f_f (cont $f_f))

  (type $d_d (func (param f64) (result f64)))
  (type $k_d_d (cont $d_d))

  (func $id_f_f (param f32) (result f32) (local.get 0))
  (func $id_d_d (param f64) (result f64) (local.get 0))

  (elem declare func $id_f_f $id_d_d)

  (func (export "call_f_f") (param f32) (result f32)
    (resume $k_f_f (local.get 0) (cont.new $k_f_f (ref.func $id_f_f)))
  )

  (func (export "cald_d_l") (param f64) (result f64)
    (resume $k_d_d (local.get 0) (cont.new $k_d_d (ref.func $id_d_d)))
  )
)

(assert_return (invoke "call_f_f" (f32.const 11)) (f32.const 11))
(assert_return (invoke "call_f_f" (f32.const -222)) (f32.const -222))
(assert_return (invoke "call_f_f" (f32.const 0xFFFF_FACE)) (f32.const 0xFFFF_FACE))

(assert_return (invoke "cald_d_l" (f64.const 4411)) (f64.const 4411))
(assert_return (invoke "cald_d_l" (f64.const -33222)) (f64.const -33222))
(assert_return (invoke "cald_d_l" (f64.const 0xDEAD_FFFF_FACE)) (f64.const 0xDEAD_FFFF_FACE))
