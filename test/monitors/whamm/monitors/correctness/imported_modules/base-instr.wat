;; to be used with: ./test/monitors/whamm/locals_to_call.wasm

(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0) "hello pred!\n")
    (data (i32.const 13) "hello call!\n")

    (func $call_pred (export "call_pred") (param $fid i32) (param $pc i32) (param $local1 i32) (param $arg0 i32) (param $imm0 i32) (result i32)
        (call $print_pred)
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $fid)))
            (br_if $error (i32.ne (i32.const 15) (local.get $pc)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            (br_if $error (i32.ne (i32.const 1) (local.get $arg0)))
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (i32.and
                (i32.eq (i32.const 0) (local.get $fid))
                (i32.eq (i32.const 15) (local.get $pc))
            )
            return
        )
        unreachable
    )
    ;; out of order to test that the order is not assumed for these!
    (func $call_probe (export "call_probe")
            (param $arg1_0 i32) (param $local1 i32) (param $arg0_0 i32) (param $arg0_1 i32) (param $local0 i32) (param $imm0 i32)
        (call $print_call)
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $arg1_0)))
            (br_if $error (i32.ne (i32.const 1) (local.get $local1)))
            (br_if $error (i32.ne (i32.const 0) (local.get $arg0_0)))
            (br_if $error (i32.ne (i32.const 0) (local.get $arg0_1)))
            (br_if $error (i32.ne (i32.const 0) (local.get $local1)))
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            return
        )
        unreachable
    )

    ;; basic print funcs
    (func $print_pred (export "print_pred")
        (call $puts (i32.const 0) (i32.const 12))
    )
    (func $print_call (export "print_call")
        (call $puts (i32.const 13) (i32.const 12))
    )
)