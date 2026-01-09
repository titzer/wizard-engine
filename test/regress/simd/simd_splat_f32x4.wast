;; Issue #543

(module
  (func (export "main") (result f64)
    (f32.const 1.0)
    (f32x4.splat)
    (f64x2.extract_lane 0)
  )
)

(assert_return (invoke "main") (f64.const 0.007812501848093234))
