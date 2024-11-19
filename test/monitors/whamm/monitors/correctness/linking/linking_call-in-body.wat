;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/linking/linking_call-in-body.wat -o ./test/whamm/jit/correctness/linking/linking_call-in-body.wasm
;; wasm-tools parse ./test/whamm/jit/correctness/linking/linking_instr.wat -o ./test/whamm/jit/correctness/linking/linking_instr.wasm
;; wizard --expose=wizeng --monitors=./test/whamm/jit/correctness/linking/linking_call-in-body.wasm ./test/whamm/jit/correctness/linking/linking_instr.wasm ./test/monitors/whamm/locals_to_call.wasm

;; EXPECTED OUTPUT:
;; hello call!

;; ACTUAL OUTPUT:
;; ./test/whamm/jit/correctness/linking/linking_call-in-body.wasm:0x0: import #0("linking_instr"."print_call"): function import not found
;; ./test/whamm/jit/correctness/linking/linking_call-in-body.wasm:0x0: import #0("linking_instr"."print_call"): function import not found
;; ./test/whamm/jit/correctness/linking/linking_call-in-body.wasm:0x0: import #0("linking_instr"."print_call"): function import not found
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
    (import "linking_instr" "print_call" (func $print_call))

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