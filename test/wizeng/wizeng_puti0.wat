(module
  (import "wizeng" "puti" (func $puti (param i32)))
  (func $main (export "main")
    (call $puti (i32.const 11223344))
    (call $puti (i32.const -66778899))
  )
)
