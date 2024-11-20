;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/linking/linking_static-pred.wat -o ./test/whamm/jit/correctness/linking/linking_static-pred.wasm
;; wasm-tools parse ./test/whamm/jit/correctness/linking/linking_instr.wat -o ./test/whamm/jit/correctness/linking/linking_instr.wasm
;; wizard --expose=wizeng --monitors=./test/whamm/jit/correctness/linking/linking_static-pred.wasm ./test/whamm/jit/correctness/linking/linking_instr.wasm ./test/monitors/whamm/locals_to_call.wasm

;; EXPECTED OUTPUT:
;; hello pred!
;; hello call!

;; ACTUAL OUTPUT:
;; ./test/whamm/jit/correctness/linking/linking_static-pred.wasm:0x1: import #1("linking_instr"."call_pred"): function import not found
;; ./test/whamm/jit/correctness/linking/linking_static-pred.wasm:0x1: import #1("linking_instr"."call_pred"): function import not found
;; ./test/whamm/jit/correctness/linking/linking_static-pred.wasm:0x1: import #1("linking_instr"."call_pred"): function import not found
;; Exception in thread "main" java.lang.NullPointerException: Cannot read field "module" because "V3C_WhammMonitor.getWhammInstance(V3C_Module).f0" is null
;; 	at V3C_WhammMonitor.onFinish(Unknown Source)
;; 	at V3K_wizeng$Dmain.main(Unknown Source)
;; 	at V3K_wizeng$Dmain.main(Unknown Source)

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
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (import "base-instr" "call_pred" (func $call_pred (param i32 i32 i32 i32 i32) (result i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0) "hello call!\n")

    ;; out of order to test that the order is not assumed for these!
    (func $call_probe (export "wasm:opcode:call / $call_pred(fid, pc, local1, arg0, imm0) / (imm0, arg1, local1)")
            (param $imm0 i32) (param $arg1 i32) (param $local1 i32)
        (call $puts (i32.const 0) (i32.const 12))
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg1)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )
)