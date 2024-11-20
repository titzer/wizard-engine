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
    (import "base-instr" "call_probe" (func $call_probe (param i32 i32 i32 i32 i32 i32)))

    ;; out of order to test that the order is not assumed for these!
    (export "wasm:opcode:call(arg1, local1, arg0, arg0, local0, imm0)" (func $call_probe))
)