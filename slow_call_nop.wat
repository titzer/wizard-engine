(module
  (func $f)
  (func (export "main") (result i32)
        call $f
	i32.const 0
  )
)
