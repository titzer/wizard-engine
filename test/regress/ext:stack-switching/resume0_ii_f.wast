;; Test round-tripping (i32) through a continuation works.
(module
  (type $ii_f (func (param i32 i32) (result f32)))
  (type $k_ii_f (cont $ii_f))

  (func $f_ii_f (param i32 i32) (result f32)
    (f32.sub
      (f32.convert_i32_s (local.get 0))
      (f32.convert_i32_s (local.get 1)))
  )

  (elem declare func $f_ii_f)

  (func (export "call_ii_f") (param i32 i32) (result f32)
    (resume $k_ii_f (local.get 0) (local.get 1) (cont.new $k_ii_f (ref.func $f_ii_f)))
  )
)

(assert_return (invoke "call_ii_f" (i32.const 444) (i32.const 333)) (f32.const 111))
(assert_return (invoke "call_ii_f" (i32.const 222) (i32.const 888)) (f32.const -666))
