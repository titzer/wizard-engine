(module
  (func $f (result i32)
	i32.const 10)
  (func (export "main") (result i32)
        call $f
  )
)
