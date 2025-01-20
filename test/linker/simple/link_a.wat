(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))
  (memory (export "mem") 1 1)
  (export "puti" (func $puti)) ;; re-export

  (data (i32.const 0xFFFD) "\n\00")

  (func (export "ln")
    (call $puts (i32.const 0xFFFD) (i32.const 1))
  )
  
  (func $func (export "func") (param i32) (result i32)
    (i32.add (i32.load (i32.const 0)) (local.get 0))
  )
)
