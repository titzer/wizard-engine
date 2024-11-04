(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (func $main (export "main")
    (call $puti (i32.const 44112233))
    (call $puti (i32.const -99667788))
  )
)
