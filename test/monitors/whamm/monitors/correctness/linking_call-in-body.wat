;; SUMMARY
;; - num_match_rules: 1
;; - overlapping? false
;; - predicated?
;;   - static: false
;;   - dynamic: false
;; - requested_data:
;;   - predicate: N/A
;;   - body: argN, immN, localN
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
;; - linking? true
(module
    (import "base-instr" "print_call" (func $print_call))

    ;; out of order to test that the order is not assumed for these!
    (func $call_probe (export "wasm:opcode:call(imm0, arg1, local1)")
            (param $imm0 i32) (param $arg1 i32) (param $local1 i32)
        (call $print_call)
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg1)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )
)