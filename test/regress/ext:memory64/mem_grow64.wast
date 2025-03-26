(module
  (memory i64 0 10)
  (func (export "grow") (param i64) (result i64) (memory.grow (local.get 0)))
)

(assert_return (invoke "grow" (i64.const 0x10000)) (i64.const -1))
