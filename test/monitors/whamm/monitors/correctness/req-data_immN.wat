;; SUMMARY
;; - num_match_rules: 1
;; - overlapping? false
;; - predicated?
;;   - static: false
;;   - dynamic: false
;; - requested_data:
;;   - predicate: N/A
;;   - body: immN
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
;; - linking? false
(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0xc00) "hello world!\n")

    ;; out of order to test that the order is not assumed for these!
    (func $simple_probe (export "wasm:opcode:call_indirect(imm1, imm0)") (param $imm1 i32) (param $imm0 i32)
        (call $puts (i32.const 0xc00) (i32.const 13))
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $imm1)))
            return
        )
        unreachable
    )
)