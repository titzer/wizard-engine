(module
  (func (export "break-multi-value") (param i32) (result i32 i64)
    (if (result i32 i64) (local.get 0)
      (then
        (br 0 (i32.const 19) (i64.const 18))
      )
      (else
        (br 0 (i32.const -19) (i64.const -18))
      )
    )
  )
)

(assert_return
  (invoke "break-multi-value" (i32.const 0x0))
  (i32.const 0xffff_ffed)
  (i64.const 0xffff_ffff_ffff_ffee)
)
