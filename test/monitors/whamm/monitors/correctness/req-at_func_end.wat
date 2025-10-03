(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0) "T\n")
    (data (i32.const 2) "F\n")

    (func $simple_probe (export "wasm:opcode:end ($static(at_func_end))") (param i32))

    (func (export "$static") (param $at_func_end i32) (result i32)
        (call $puts (select (i32.const 0) (i32.const 2) (local.get $at_func_end)) (i32.const 2))

        i32.const 0
    )
)