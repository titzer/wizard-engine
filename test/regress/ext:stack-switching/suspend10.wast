(module
  (type $f_d (func (param f32) (result f64)))
  (type $k_f_d (cont $f_d))
  (type $l_d (func (param i64) (result f64)))
  (type $k_l_d (cont $l_d))

  (tag $t (param i32) (result i64))

  (func $foo (param f32) (result f64)
    (f64.convert_i64_s (suspend $t (i32.trunc_f32_s (local.get 0))))
  )

  (elem declare func $foo)

  (func (export "main") (param f32) (result f64)
    (local $y (ref null $k_l_d))
    (block (result i32 (ref null $k_l_d))
      (resume $k_f_d (on $t 0) (local.get 0)
        (cont.new $k_f_d (ref.func $foo)))
      unreachable)
    (local.set $y)
    (i64.extend_i32_s)
    (local.get $y)
    (resume $k_l_d)
  )
)

(assert_return (invoke "main" (f32.const 11)) (f64.const 11))
(assert_return (invoke "main" (f32.const -1144)) (f64.const -1144))
