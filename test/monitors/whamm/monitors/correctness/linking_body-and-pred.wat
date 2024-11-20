;; SUMMARY
;; - num_match_rules: 1
;; - overlapping? false
;; - predicated?
;;   - static: true
;;   - dynamic: false
;; - requested_data:
;;   - predicate: argN, immN, localN
;;   - body: argN, immN, localN
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
;; - linking? true
(module
    (import "base-instr" "call_pred" (func $call_pred (param i32 i32 i32 i32 i32) (result i32)))
    (import "base-instr" "call_probe" (func $call_probe (param i32 i32 i32 i32 i32 i32)))

    ;; out of order to test that the order is not assumed for these!
    (export "wasm:opcode:call / $call_pred(fid, pc, local1, arg0, imm0) / (imm0, arg1, local1)" (func $call_probe))
)