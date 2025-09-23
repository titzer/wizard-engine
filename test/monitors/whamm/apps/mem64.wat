(module
  (memory i64 1 1)
  (func (export "main")
    (i32.store (i64.const 1137) (i32.const 0x11223344))
    (drop (i32.load (i64.const 1137)))
  )
)
