(module
(import "table" "table" (table 2 2 funcref))
(import "wizeng" "puti" (func $puti (param i32)))

(func $func 
    (i32.const 0)
    (i32.const 0)
    (i32.load)
    (i32.const 123)
    (i32.add)
    (i32.store)
)

(func $main
    (i32.const 0)
    (call_indirect)
    (i32.const 1)
    (i32.const 246)
    (i32.const 0)
    (i32.load)
    (i32.eq)
    (i32.div_u)
    call $puti
)
(export "main" (func $main))
(memory (export "memory") 1)
(elem (i32.const 1) $func)
)