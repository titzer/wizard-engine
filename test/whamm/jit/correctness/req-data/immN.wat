;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/req-data/immN.wat -o ./test/whamm/jit/correctness/req-data/immN.wasm
;; wizard --monitors=./test/whamm/jit/correctness/req-data/immN.wasm ./test/monitors/whamm/locals_to_call.wasm

;; EXPECTED OUTPUT:
;; NONE

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
(module
    ;; out of order to test that the order is not assumed for these!
    (func $simple_probe (export "wasm:opcode:call_indirect (imm1, imm0)") (param $imm1 i32) (param $imm0 i32)
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $imm1)))
            return
        )
        unreachable
    )
)