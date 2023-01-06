(module
  (func (export "break-multi-value") (param i32) (result i32 i32 i64)
    (if (result i32 i32 i64) (local.get 0)
      (then
        (br 0 (i32.const 18) (i32.const -18) (i64.const 18))
        (i32.const 19) (i32.const -19) (i64.const 19)
      )
      (else
        (br 0 (i32.const -18) (i32.const 18) (i64.const -18))
        (i32.const -19) (i32.const 19) (i64.const -19)
      )
    )
  )
)

(assert_return
  (invoke "break-multi-value" (i32.const 0x0))
  (i32.const 0xffff_ffee)
  (i32.const 0x12)
  (i64.const 0xffff_ffff_ffff_ffee)
)
(assert_return
  (invoke "break-multi-value" (i32.const 0x1))
  (i32.const 0x12)
  (i32.const 0xffff_ffee)
  (i64.const 0x12)
)
