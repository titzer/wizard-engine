;; SUMMARY
;; - num_match_rules: 2
;; - overlapping? true
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
    (data (i32.const 27) "hello call0!\n")
    (data (i32.const 40) "hello call1!\n")

    (func $call_pred0 (param $fid i32) (param $pc i32) (param $local1 i32) (param $arg0 i32) (param $imm0 i32) (result i32)
        (call $puts (i32.const 0) (i32.const 12))
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $fid)))
            (br_if $error (i32.ne (i32.const 15) (local.get $pc)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            (br_if $error (i32.ne (i32.const 1) (local.get $arg0)))
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (i32.and
                (i32.eq (i32.const 0) (local.get $fid))
                (i32.eq (i32.const 20) (local.get $pc)) ;; not true! no match...
            )
            return
        )
        unreachable
    )
    ;; out of order to test that the order is not assumed for these!
    (func $call_probe0 (export "wasm:opcode:call / $call_pred0(fid, pc, local1, arg0, imm0) / (imm0, arg1, local1)")
            (param $imm0 i32) (param $arg1 i32) (param $local1 i32)
        (call $puts (i32.const 27) (i32.const 13))
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg1)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )

    (func $call_pred1 (param $fid i32) (param $pc i32) (param $local1 i32) (param $arg0 i32) (param $imm0 i32) (result i32)
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
    (func $call_probe1 (export "wasm:opcode:call / $call_pred1(fid, pc, local1, arg0, imm0) / (imm0, arg1, local1)")
            (param $imm0 i32) (param $arg1 i32) (param $local1 i32)
        (call $puts (i32.const 40) (i32.const 13))
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $imm0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $arg1)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )
)