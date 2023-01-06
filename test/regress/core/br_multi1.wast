(module
  (func (export "break-multi-value") (param i32) (result i32 i32 i64)
    (block (result i32 i32 i64)
      (br 0 (i32.const 18) (i32.const -18) (i64.const 18))
    )
  )
)

(assert_return
  (invoke "break-multi-value" (i32.const 0x1))
  (i32.const 0x12)
  (i32.const 0xffff_ffee)
  (i64.const 0x12)
)
