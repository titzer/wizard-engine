;; SUMMARY
;; - num_match_rules: 2
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
;; - linking? false
(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0) "hello pred0!\n")
    (data (i32.const 13) "hello pred1!\n")
    (data (i32.const 27) "hello call!\n")
    (data (i32.const 40) "hello call_indirect!\n")

    (func $call_pred (param $fid i32) (param $pc i32) (param $local1 i32) (param $arg0 i32) (param $imm0 i32) (result i32)
        (call $puts (i32.const 0) (i32.const 12))
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $fid)))
            (br_if $error (i32.ne (i32.const 15) (local.get $pc)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            (br_if $error (i32.ne (i32.const 1) (local.get $arg0)))
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
    (func $call_probe (export "wasm:opcode:call / $call_pred(fid, pc, local1, arg0, imm0) / (imm0, arg1, local1)")
            (param $imm0 i32) (param $arg1 i32) (param $local1 i32)
        (call $puts (i32.const 27) (i32.const 12))
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg1)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )

    (func $call_indirect_pred
            (param $local0 i32) (param $fid i32) (param $imm1 i32) 
            (param $pc i32) (param $arg0 i32)
                (result i32)
        (call $puts (i32.const 13) (i32.const 12))
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $fid)))
            (br_if $error (i32.ne (i32.const 20) (local.get $pc)))
            (br_if $error (i32.ne (i32.const 1) (local.get $local0)))
            (br_if $error (i32.ne (i32.const 0) (local.get $arg0)))
            (br_if $error (i32.ne (i32.const 0) (local.get $imm1)))
            (i32.and
                (i32.eq (i32.const 0) (local.get $fid))
                (i32.eq (i32.const 20) (local.get $pc))
            )
            return
        )
        unreachable
    )
    ;; out of order to test that the order is not assumed for these!
    (func $call_indirect_probe (export "wasm:opcode:call_indirect / $call_indirect_pred(local0, fid, imm1, pc, arg0) / (imm1, arg0, imm0, local1)")
            (param $imm1 i32) (param $arg0 i32) (param $imm0 i32) (param $local1 i32)
        (call $puts (i32.const 40) (i32.const 21))
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 0) (local.get $arg0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $imm1)))
            return
        )
        unreachable
    )
)