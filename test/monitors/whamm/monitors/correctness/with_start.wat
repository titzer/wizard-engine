(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0) "hello world!\n")

    (func $start_func
        ;; This should get called and print: hello world!\n
        (call $puts (i32.const 0) (i32.const 13))
    )
    (start 1)
)
