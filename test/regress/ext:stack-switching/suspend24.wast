;; 8 parameters of mixed types.
;; Tests frame with 8 mixed-type values packed in compression.
(module
  (type $f (func (result i64)))
  (type $c (cont $f))
  (type $fb (func (param i64) (result i64)))
  (type $cb (cont $fb))
  (tag $ts (result i64))

  (func $top (param i32 i64 f32 f64 i32 i64 f32 f64) (result i64)
    (i64.add
      (i64.add
        (i64.add (i64.extend_i32_s (local.get 0)) (local.get 1))
        (i64.add (i64.trunc_f32_s (local.get 2)) (i64.trunc_f64_s (local.get 3))))
      (i64.add
        (i64.add (i64.extend_i32_s (local.get 4)) (local.get 5))
        (i64.add (i64.trunc_f32_s (local.get 6)) (i64.trunc_f64_s (local.get 7)))))
  )

  (func $bot (result i64)
    (suspend $ts)
    (drop)
    (call $top
      (i32.const 1) (i64.const 2) (f32.const 3.0) (f64.const 4.0)
      (i32.const 5) (i64.const 6) (f32.const 7.0) (f64.const 8.0))
  )
  (elem declare func $bot)

  ;; main: catches suspension, resumes; result = 1+2+3+4+5+6+7+8 = 36
  (func (export "main") (result i64)
    (i64.const 0)
    (block (result (ref null $cb))
      (resume $c (on $ts 0) (cont.new $c (ref.func $bot)))
      (return)
    )
    (resume $cb)
  )
)

(assert_return (invoke "main") (i64.const 36))
