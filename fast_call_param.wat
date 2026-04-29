(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (func $f (param i32) (result i32)
    local.get 0
    if (result i32)
      i32.const 999
    else
      i32.const -216
    end
  )
  (func (export "main") (result i32)
        (call $f (i32.const 1))
	call $puti
        (call $f (i32.const 0))
	call $puti
	i32.const 0
  )
)
