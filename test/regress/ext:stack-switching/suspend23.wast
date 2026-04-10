;; 3-function chain with mixed types.
;; Tests 3 heterogeneous frames with i32/i64/f32/f64.
(module
  (type $f (func (result i32)))
  (type $c (cont $f))
  (type $fb (func (param i32) (result i32)))
  (type $cb (cont $fb))
  (tag $fetch (result i32))

  ;; func_c: suspends, gets fetched value, adds to trunc(param)
  (func $func_c (param f64) (result i32)
    (i32.add
      (i32.trunc_f64_s (local.get 0))
      (suspend $fetch))
  )

  ;; func_b: calls func_c with converted params, adds trunc(f32 param)
  (func $func_b (param i64 f32) (result i32)
    (i32.add
      (call $func_c (f64.convert_i64_s (local.get 0)))
      (i32.trunc_f32_s (local.get 1)))
  )

  ;; func_a: calls func_b, adds 100
  (func $func_a (param i32) (result i32)
    (i32.add
      (call $func_b (i64.extend_i32_s (local.get 0)) (f32.const 2.0))
      (i32.const 100))
  )

  (func $start (result i32)
    (call $func_a (i32.const 5))
  )
  (elem declare func $start)

  ;; main: catches suspension, resumes with 10
  ;; Result: trunc(5.0)+10=15, +trunc(2.0)=17, +100=117
  (func (export "main") (result i32)
    (i32.const 10)
    (block (result (ref null $cb))
      (resume $c (on $fetch 0) (cont.new $c (ref.func $start)))
      (return)
    )
    (resume $cb)
  )
)

(assert_return (invoke "main") (i32.const 117))
