(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))

    (func $simple_probe (export "wasm:opcode:call ($static_call(fname))") (param i32)
        ;; print: "hello world!\n"
        (call $puts (i32.const 0) (i32.const 13))
    )

    (func (export "$static_call") (param i32 i32) (result i32)
        (i32.eqz (local.get 1))
        if
            ;; print: "<UNKNOWN>\n"
            (call $puts (i32.const 13) (i32.const 10))
        end
        i32.const 0
    )
    (memory (export "whamm_buffer") 1 1)
    (global (export "whamm_buffer:start") i32 (i32.const 24))
    (global (export "whamm_buffer:max") i32 (i32.const 0))

    (data (i32.const 0) "hello world!\n")
    (data (i32.const 13) "<UNKNOWN>\n")
)