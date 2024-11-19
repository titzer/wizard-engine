;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/req-data/req_multiple.wat -o ./test/whamm/jit/correctness/req-data/req_multiple.wasm
;; wizard --monitors=./test/whamm/jit/correctness/req-data/req_multiple.wasm ./test/monitors/whamm/locals_to_call.wasm

;; EXPECTED OUTPUT:
;; hello call!
;; hello call_indirect!

;; ACTUAL OUTPUT:
;; Exception in thread "main" java.lang.ClassCastException
;;	at V3C_WhammMonitor.bindParams(Unknown Source)
;;	at V3C_WhammMonitor.bytecodeProbe(Unknown Source)
;;	at V3D_WhammMonitor$DbytecodeProbe.invoke(Unknown Source)
;;	at V3C_wizeng$Djvm$$closure4$L$PModule$CInstance$CFuncDecl$CCodeValidator$Cint$COpcode$Q$Avoid$CModule$CInstance$CFuncDecl$R.m123599(Unknown Source)
;;	at V3D_wizeng$Djvm$$closure4$L$PModule$CInstance$CFuncDecl$CCodeValidator$Cint$COpcode$Q$Avoid$CModule$CInstance$CFuncDecl$R$Dm123599.invoke(Unknown Source)
;;	at V3C_CodeValidator.validateCode(Unknown Source)
;;	at V3C_CodeValidator.validateFunc0(Unknown Source)
;;	at V3D_CodeValidator$DvalidateFunc0.invoke(Unknown Source)
;;	at V3C_TimeMetric.run$L$PFuncDecl$CDataReader$Q$CCodeValidatorResult$R(Unknown Source)
;;	at V3C_CodeValidator.validate(Unknown Source)
;;	at V3C_CodeValidator.validateFunc(Unknown Source)
;;	at V3C_WhammMonitor.onParse(Unknown Source)
;;	at V3K_wizeng$Dmain.main(Unknown Source)
;;	at V3K_wizeng$Dmain.main(Unknown Source)

;; SUMMARY
;; - num_match_rules: 2
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
;; - linking? false
(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0x0) "hello call!\n")
    (data (i32.const 0xFF) "hello call_indirect!\n")

    ;; out of order to test that the order is not assumed for these!
    (func $call_probe (export "wasm:opcode:call(arg1, local1, arg0, arg0, local0, imm0)")
            (param $arg1_0 i32) (param $local1 i32) (param $arg0_0 i32) (param $arg0_1 i32) (param $local0 i32) (param $imm0 i32)
        (call $puts (i32.const 0x0) (i32.const 12))
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $arg1_0)))
            (br_if $error (i32.ne (i32.const 1) (local.get $local1)))
            (br_if $error (i32.ne (i32.const 0) (local.get $arg0_0)))
            (br_if $error (i32.ne (i32.const 0) (local.get $arg0_1)))
            (br_if $error (i32.ne (i32.const 0) (local.get $local1)))
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            return
        )
        unreachable
    )

    ;; out of order to test that the order is not assumed for these!
    (func $call_indirect_probe (export "wasm:opcode:call_indirect(imm1, arg0, imm0)") (param $imm1 i32) (param $arg0 i32) (param $imm0 i32)
        (call $puts (i32.const 0xFF) (i32.const 21))
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 0) (local.get $arg0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $imm1)))
            return
        )
        unreachable
    )
)