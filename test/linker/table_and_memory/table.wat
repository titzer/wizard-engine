(module
(import "main" "memory" (memory 1))

(func $func
    (i32.const 0)
    (i32.const 123)
    (i32.store)
    (i32.const 1)
    (call_indirect)
)

(table (export "table") 2 2 funcref)
(elem (i32.const 0) $func)
)