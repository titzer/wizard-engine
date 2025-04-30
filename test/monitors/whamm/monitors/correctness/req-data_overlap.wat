;; SUMMARY
;; - num_match_rules: 2
;; - overlapping? true
;; - predicated?
;;   - static: false
;;   - dynamic: false
;; - requested_data:
;;   - predicate: N/A
;;   - body: argN, immN, localN
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
;; - linking? false
(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0x0) "hello call0!\n")
    (data (i32.const 0xFF) "hello call1!\n")

    ;; out of order to test that the order is not assumed for these!
    (func $call_probe0 (export "wasm:opcode:call(arg1, local1, arg0, arg0, local0, imm0)")
            (param $arg1_0 i32) (param $local1 i32) (param $arg0_0 i32) (param $arg0_1 i32) (param $local0 i32) (param $imm0 i32)
        (call $puts (i32.const 0x0) (i32.const 13))
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $arg1_0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg0_0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg0_1)))
            (br_if $error (i32.ne (i32.const 1) (local.get $local0)))
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            return
        )
        unreachable
    )

    ;; out of order to test that the order is not assumed for these!
    (func $call_probe1 (export "wasm:opcode:call(arg1, local1)") (param $arg1 i32) (param $local1 i32)
        (call $puts (i32.const 0xFF) (i32.const 13))
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $arg1)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )
)
