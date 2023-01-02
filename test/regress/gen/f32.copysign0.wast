(module
  (func (export "m0") (param f32 f32) (result f32)
    (f32.copysign (local.get 0)(local.get 1))
  )
)
(assert_return (invoke "m0" (f32.const nan)(f32.const 0)) (f32.const nan))
(assert_return (invoke "m0" (f32.const -0x1.CA8642p-113)(f32.const 0x1.CCCCCCp-115)) (f32.const 0x1.CA8642p-113))
(assert_return (invoke "m0" (f32.const 0x1.CA8642p-113)(f32.const -0x1.CCCCCCp-51)) (f32.const -0x1.CA8642p-113))
