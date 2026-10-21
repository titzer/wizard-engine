(assert_invalid (module
  (memory $a 1)
  (memory $b i64 1)
  (func (export "f") (result i32)
    (memory.copy $a $b (i32.const 0) (i64.const 0) (i64.const 4))
    (i32.const 7))) "type mismatch")
