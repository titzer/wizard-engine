(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (func $f (result i32)
	i32.const 10)
  (func (export "main") (result i32)
        call $f
	call $puti
	i32.const 0
  )
)
