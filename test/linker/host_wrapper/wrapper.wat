(module
(import "wizeng" "puti" (func $puti (param i32)))

(func $wrapper (param i32)
    (call $puti (local.get 0))
)
(export "puti" (func $wrapper))
)