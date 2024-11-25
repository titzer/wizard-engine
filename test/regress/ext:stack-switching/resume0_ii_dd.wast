;; Test round-tripping (i32) through a continuation works.
(module
  (type $ii_dd (func (param i32 i32) (result f64 f64)))
  (type $k_ii_dd (cont $ii_dd))

  (func $f_ii_dd (param i32 i32) (result f64 f64)
    (f64.convert_i32_s (local.get 0))
    (f64.convert_i32_s (local.get 1))
  )

  (elem declare func $f_ii_dd)

  (func (export "call_ii_dd") (param i32 i32) (result f64 f64)
    (resume $k_ii_dd (local.get 0) (local.get 1) (cont.new $k_ii_dd (ref.func $f_ii_dd)))
  )
)

(assert_return (invoke "call_ii_dd" (i32.const 444) (i32.const 333)) (f64.const 444) (f64.const 333))
(assert_return (invoke "call_ii_dd" (i32.const 222) (i32.const 888)) (f64.const 222) (f64.const 888))

(assert_return (invoke "call_ii_dd" (i32.const -2222) (i32.const 3333)) (f64.const -2222) (f64.const 3333))
(assert_return (invoke "call_ii_dd" (i32.const 1111) (i32.const -5555)) (f64.const 1111) (f64.const -5555))
