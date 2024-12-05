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
;; - multi-memory? true
;; - linking? true
(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (import "wizeng" "puti" (func $puti (param i32)))

    ;; first memory
    (memory $mem0 (export "mem0") 1)
    (data (memory $mem0) (i32.const 0) "*\00\00\00")
    (data (memory $mem0) (i32.const 0x90) "\n")
    ;; second memory
    (memory $mem1 1)
    (data (memory $mem1) (i32.const 0) "+\00\00\00")

    (func $call_pred (export "$call_pred") (param $fid i32) (param $pc i32) (param $imm0 i32) (result i32)
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $fid)))
            (br_if $error (i32.ne (i32.const 15) (local.get $pc)))
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (i32.and
                (i32.eq (i32.const 0) (local.get $fid))
                (i32.eq (i32.const 15) (local.get $pc))
            )
            return
        )
        unreachable
    )
    ;; out of order to test that the order is not assumed for these!
    (func $call_probe (export "wasm:opcode:call / $call_pred(fid, pc, imm0) / (imm0, arg1, local1)")
            (param $imm0 i32) (param $arg1 i32) (param $local1 i32)
        (call $puti (i32.load $mem0 (i32.const 0))) ;; pulls from first memory!
        (call $puti (i32.load $mem1 (i32.const 0))) ;; pulls from second memory!
	(call $puts (i32.const 0x90) (i32.const 1)) ;; pulls from first memory (default behavior of host function)
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg1)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )
)
