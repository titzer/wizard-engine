(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0) "hello pred!\n")
    (data (i32.const 13) "hello call!\n")

    ;; basic print funcs
    (func $print_pred (export "print_pred")
        (call $puts (i32.const 0) (i32.const 12))
    )
    (func $print_call (export "print_call")
        (call $puts (i32.const 13) (i32.const 12))
    )
)