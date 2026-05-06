;; 50-deep recursion with 3 locals per frame (i32, i64, f32).
;; Accumulates i32 counter as i64 sum: 1+2+...+50 = 1275.
;; f32 param is preserved but unused in result (exercises f32 compression).
;; Tests: 51 frames * 3 values each = 150+ mixed-type values.
(module
  (type $f (func (result i64)))
  (type $c (cont $f))
  (type $fb (func (param i64) (result i64)))
  (type $cb (cont $fb))
  (tag $ts (param i64) (result i64))

  (func $foo (param i32 i64 f32) (result i64)
    (if (result i64) (i32.eqz (local.get 0))
      (then
        (suspend $ts (local.get 1))
      )
      (else
        (call $foo
          (i32.sub (local.get 0) (i32.const 1))
          (i64.add (local.get 1) (i64.extend_i32_s (local.get 0)))
          (f32.add (local.get 2) (f32.const 0.5)))
      )
    )
  )

  (func $start (result i64)
    (call $foo (i32.const 50) (i64.const 0) (f32.const 1.0))
  )
  (elem declare func $start)

  ;; main: catches suspension with accumulated sum (1275), resumes with it
  (func (export "main") (result i64)
    (block (result i64 (ref null $cb))
      (resume $c (on $ts 0) (cont.new $c (ref.func $start)))
      (return)
    )
    ;; stack: [i64=1275, ref $cb] — resume with the payload
    (resume $cb)
  )
)

(assert_return (invoke "main") (i64.const 1275))
