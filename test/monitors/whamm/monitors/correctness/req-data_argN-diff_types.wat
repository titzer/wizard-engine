(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0xc00) "hello world!\n")

    ;; out of order to test that the order is not assumed for these!
    (func $simple_probe (export "wasm:opcode:call(arg0, arg2, arg1)") (param $arg0 i64) (param $arg2 f64) (param $arg1 i32)
        (call $puts (i32.const 0xc00) (i32.const 13))
        (block $error
            (br_if $error (i64.ne (i64.const 2) (local.get $arg0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg1)))
            (br_if $error (f64.ne (f64.const 1) (local.get $arg2)))
            return
        )
        unreachable
    )
)