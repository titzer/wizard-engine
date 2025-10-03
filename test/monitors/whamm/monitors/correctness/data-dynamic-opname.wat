;; TODO: once you can request data @dynamic time, this is the output we should expect (i think):
;; callhello world!
;; callhello world!
(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))

    (func $simple_probe (export "wasm:opcode:call (opname)") (param i32 i32)
        (call $puts (local.get 0) (local.get 1))
        (call $puts (i32.const 0) (i32.const 13))
    )

    (memory (export "whamm_buffer") 1 1)
    (global (export "whamm_buffer:start") i32 (i32.const 13))
    (global (export "whamm_buffer:max") i32 (i32.const 64))

    (data (i32.const 0) "hello world!\n")
)