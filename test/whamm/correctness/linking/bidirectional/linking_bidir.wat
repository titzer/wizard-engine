;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/linking/bidirectional/linking_bidir.wat -o ./test/whamm/jit/correctness/linking/bidirectional/linking_bidir.wasm && wasm-tools parse ./test/whamm/jit/correctness/linking/bidirectional/instr.wat -o ./test/whamm/jit/correctness/linking/bidirectional/instr.wasm
;; wizard --expose=wizeng --monitors=./test/whamm/jit/correctness/linking/bidirectional/linking_bidir.wasm ./test/whamm/jit/correctness/linking/bidirectional/instr.wasm ./test/monitors/whamm/locals_to_call.wasm

;; EXPECTED OUTPUT:
;; hello pred!
;; hello call!

;; ACTUAL OUTPUT:
;; ./test/whamm/jit/correctness/linking/bidirectional/linking_bidir.wasm:0x0: import #0("instr"."call_pred"): function import not found
;; ./test/whamm/jit/correctness/linking/bidirectional/linking_bidir.wasm:0x0: import #0("instr"."call_pred"): function import not found
;; ./test/whamm/jit/correctness/linking/bidirectional/instr.wasm:0x0: instr.wasm: import from unknown module "linking_bidir"

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
    (import "instr" "call_pred" (func $call_pred (param i32 i32 i32 i32 i32) (result i32)))
    (import "instr" "call_probe" (func $call_probe (param i32 i32 i32 i32 i32 i32)))
    
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0) "hello pred!\n")
    (data (i32.const 13) "hello call!\n")

    ;; out of order to test that the order is not assumed for these!
    (export "wasm:opcode:call / $call_pred(fid, pc, local1, arg0, imm0) / (imm0, arg1, local1)" (func $call_probe))
    
    ;; basic print funcs
    (func $print_pred (export "print_pred")
        (call $puts (i32.const 0) (i32.const 12))
    )
    (func $print_call (export "print_call")
        (call $puts (i32.const 13) (i32.const 12))
    )
)