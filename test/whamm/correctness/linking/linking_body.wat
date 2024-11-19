;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/linking/linking_body.wat -o ./test/whamm/jit/correctness/linking/linking_body.wasm
;; wasm-tools parse ./test/whamm/jit/correctness/linking/instr.wat -o ./test/whamm/jit/correctness/linking/instr.wasm
;; wizard --expose=wizeng --monitors=./test/whamm/jit/correctness/linking/linking_body.wasm ./test/whamm/jit/correctness/linking/instr.wasm ./test/monitors/whamm/locals_to_call.wasm

;; EXPECTED OUTPUT:
;; hello call!

;; ACTUAL OUTPUT:
;; ./test/whamm/jit/correctness/linking/linking_body.wasm:0x0: import #0("instr"."call_probe"): function import not found
;; ./test/whamm/jit/correctness/linking/linking_body.wasm:0x0: import #0("instr"."call_probe"): function import not found
;; ./test/whamm/jit/correctness/linking/linking_body.wasm:0x0: import #0("instr"."call_probe"): function import not found
;; Exception in thread "main" java.lang.NullPointerException: Cannot read field "module" because "V3C_WhammMonitor.getWhammInstance(V3C_Module).f0" is null
;; 	at V3C_WhammMonitor.onFinish(Unknown Source)
;; 	at V3K_wizeng$Dmain.main(Unknown Source)
;; 	at V3K_wizeng$Dmain.main(Unknown Source)

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
    (import "instr" "call_probe" (func $call_probe (param i32 i32 i32 i32 i32 i32)))

    ;; out of order to test that the order is not assumed for these!
    (export "wasm:opcode:call(arg1, local1, arg0, arg0, local0, imm0)" (func $call_probe))
)