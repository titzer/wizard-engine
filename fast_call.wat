(module
  (func (result i32)
	i32.const 10)
  (func (export "main") (result i32)
        call 0
        i32.const 126
        i32.const 126
	i32.add
	i32.add)
)
