(module
    (func $simple_probe (export "wasm:opcode:call ($static_call(fname))") (param i32))

    (func (export "$static_call") (param i32 i32) (result i32)
        i32.const 0
    )
    (memory (export "whamm_buffer") 1 1)
    (global (export "whamm_buffer:start") i32 (i32.const 13))
    (global (export "whamm_buffer:maximum") i32 (i32.const 3)) ;; should be named "whamm_buffer:max"
)