;; Test round-tripping (i32) through a continuation works.
(module
  (type $i_ddd (func (param i32) (result f64 f64 f64)))
  (type $k_i_ddd (cont $i_ddd))

  (func $f_i_ddd (param i32) (result f64 f64 f64)
    (f64.convert_i32_s (i32.add (local.get 0) (i32.const 111)))
    (f64.convert_i32_s (i32.add (local.get 0) (i32.const 222)))
    (f64.convert_i32_s (i32.add (local.get 0) (i32.const 333)))
  )

  (elem declare func $f_i_ddd)

  (func (export "call_i_ddd") (param i32) (result f64 f64 f64)
    (resume $k_i_ddd (local.get 0) (cont.new $k_i_ddd (ref.func $f_i_ddd)))
  )
)

(assert_return (invoke "call_i_ddd" (i32.const 111)) (f64.const 222) (f64.const 333) (f64.const 444))
(assert_return (invoke "call_i_ddd" (i32.const -222)) (f64.const -111) (f64.const 0) (f64.const 111))

