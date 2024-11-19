;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/req-data/immN.wat -o ./test/whamm/jit/correctness/req-data/immN.wasm
;; wizard --monitors=./test/whamm/jit/correctness/req-data/immN.wasm ./test/monitors/whamm/locals_to_call.wasm

;; EXPECTED OUTPUT:
;; hello world!

;; ACTUAL OUTPUT:
;; Exception in thread "main" java.lang.ClassCastException
;;   at V3C_WhammMonitor.bindParams(Unknown Source)
;;   at V3C_WhammMonitor.bytecodeProbe(Unknown Source)
;;   at V3D_WhammMonitor$DbytecodeProbe.invoke(Unknown Source)
;;   at V3C_wizeng$Djvm$$closure4$L$PModule$CInstance$CFuncDecl$CCodeValidator$Cint$COpcode$Q$Avoid$CModule$CInstance$CFuncDecl$R.m123599(Unknown Source)
;;   at V3D_wizeng$Djvm$$closure4$L$PModule$CInstance$CFuncDecl$CCodeValidator$Cint$COpcode$Q$Avoid$CModule$CInstance$CFuncDecl$R$Dm123599.invoke(Unknown Source)
;;   at V3C_CodeValidator.validateCode(Unknown Source)
;;   at V3C_CodeValidator.validateFunc0(Unknown Source)
;;   at V3D_CodeValidator$DvalidateFunc0.invoke(Unknown Source)
;;   at V3C_TimeMetric.run$L$PFuncDecl$CDataReader$Q$CCodeValidatorResult$R(Unknown Source)
;;   at V3C_CodeValidator.validate(Unknown Source)
;;   at V3C_CodeValidator.validateFunc(Unknown Source)
;;   at V3C_WhammMonitor.onParse(Unknown Source)
;;   at V3K_wizeng$Dmain.main(Unknown Source)
;;   at V3K_wizeng$Dmain.main(Unknown Source)

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