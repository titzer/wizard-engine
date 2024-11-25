;; Test round-tripping (i32) through a continuation works.
(module
  (type $iii_f (func (param i32 i32 i32) (result f32)))
  (type $k_iii_f (cont $iii_f))

  (func $f_iii_f (param i32 i32 i32) (result f32)
    (local.set 0 (i32.mul (local.get 0) (local.get 2)))
    (f32.sub
      (f32.convert_i32_s (local.get 0))
      (f32.convert_i32_s (local.get 1)))
  )

  (elem declare func $f_iii_f)

  (func (export "call_iii_f") (param i32 i32 i32) (result f32)
    (resume $k_iii_f (local.get 0) (local.get 1) (local.get 2) (cont.new $k_iii_f (ref.func $f_iii_f)))
  )
)

(assert_return (invoke "call_iii_f" (i32.const 444) (i32.const 333) (i32.const 1)) (f32.const 111))
(assert_return (invoke "call_iii_f" (i32.const 222) (i32.const 888) (i32.const 1)) (f32.const -666))

(assert_return (invoke "call_iii_f" (i32.const 2222) (i32.const 3333) (i32.const 4)) (f32.const 5555))
(assert_return (invoke "call_iii_f" (i32.const 1111) (i32.const 5555) (i32.const 9)) (f32.const 4444))
