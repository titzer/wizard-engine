;; Test round-tripping (i32) through a continuation works.
(module
  (type $i_f (func (param i32) (result f32)))
  (type $k_i_f (cont $i_f))

  (func $f_i_f (param i32) (result f32)
    (f32.convert_i32_s (local.get 0)) ;; not identity
  )

  (elem declare func $f_i_f)

  (func (export "call_i_f") (param i32) (result f32)
    (resume $k_i_f (local.get 0) (cont.new $k_i_f (ref.func $f_i_f)))
  )
)

(assert_return (invoke "call_i_f" (i32.const 444)) (f32.const 444))
(assert_return (invoke "call_i_f" (i32.const -666)) (f32.const -666))
