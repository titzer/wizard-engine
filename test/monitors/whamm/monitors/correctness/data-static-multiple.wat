(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))

    (func $simple_probe (export "wasm:opcode:call ($static_call(fname, fname))") (param i32)
        (call $puts (i32.const 0) (i32.const 13))
    )

    (func (export "$static_call") (param i32 i32 i32 i32) (result i32)
        (call $puts (local.get 0) (local.get 1))
        (call $puts (local.get 2) (local.get 3))
        i32.const 0
    )
    (memory (export "whamm_buffer") 1 1)
    (global (export "whamm_buffer:start") i32 (i32.const 13))
    (global (export "whamm_buffer:max") i32 (i32.const 8)) ;; the minimum size that should work for function called, but writing 2x: main

    (data (i32.const 0) "hello world!\n")
)