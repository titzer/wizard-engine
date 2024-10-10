(module
(import "wrapper" "puti" (func $f1 (param i32)))
(import "wizeng" "puti" (func $puti (param i32)))

(func $main
    (call $f1 (i32.const 123456))
)
(export "main" (func $main))
)