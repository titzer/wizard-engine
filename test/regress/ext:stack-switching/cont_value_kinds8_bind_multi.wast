;; Test: cont.bind with multiple arguments of different types
(module
  (type $f1 (func (param i32 i64 f32 f64) (result i32)))
  (type $f2 (func (param f32 f64) (result i32)))
  (type $f3 (func (result i32)))
  (type $c1 (cont $f1))
  (type $c2 (cont $f2))
  (type $c3 (cont $f3))

  (func $compute (param i32 i64 f32 f64) (result i32)
    ;; i32 + i64 (truncated) + f32 (truncated) + f64 (truncated)
    (i32.add
      (i32.add
        (i32.add
          (local.get 0)
          (i32.wrap_i64 (local.get 1)))
        (i32.trunc_f32_s (local.get 2)))
      (i32.trunc_f64_s (local.get 3)))
  )
  (elem declare func $compute)

  (func (export "main") (result i32)
    ;; Bind first two args, then bind remaining two
    (resume $c3
      (cont.bind $c2 $c3 (f32.const 10.9) (f64.const 12.9)
        (cont.bind $c1 $c2 (i32.const 5) (i64.const 14)
          (cont.new $c1 (ref.func $compute)))))
  )
)

(assert_return (invoke "main") (i32.const 41))
