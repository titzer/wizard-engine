(module
  (func $f)
  (func $g)
  (func (export "main") (result i32)
  	i64.const 11
	drop
        call $g
	i32.const 0
  )
)
