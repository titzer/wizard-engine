(module
  (func (export "allconst") (result i64 i64)
    i64.const 0xffffffffffffffff
    i64.const 0xffffffffffffffff
    i64.const 1
    i64.const 0
    i64.add128)
)
(assert_return (invoke "allconst") (i64.const 0) (i64.const 0))
