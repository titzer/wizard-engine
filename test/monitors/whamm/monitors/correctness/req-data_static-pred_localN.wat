;; SUMMARY
;; - num_match_rules: 1
;; - overlapping? false
;; - predicated?
;;   - static: true
;;   - dynamic: false
;; - requested_data:
;;   - predicate: localN
;;   - body: localN
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
;; - linking? false
(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0x0) "hello world!\n")
    (data (i32.const 0xFF) "hello pred!\n")

    (func $call_pred (param $fid i32) (param $pc i32) (param $local1 i32) (param $local0 i32) (result i32)
        (call $puts (i32.const 0xFF) (i32.const 12))
        (block $error
            (br_if $error (i32.ne (i32.const 0) (local.get $fid)))
            (br_if $error (i32.ne (i32.const 15) (local.get $pc)))
            (br_if $error (i32.ne (i32.const 1) (local.get $local0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            (i32.and
                (i32.eq (i32.const 0) (local.get $fid))
                (i32.eq (i32.const 15) (local.get $pc))
            )
            return
        )
        unreachable
    )
    ;; out of order to test that the order is not assumed for these!
    (func $simple_probe (export "wasm:opcode:call / $call_pred(fid, pc, local1, local0) / (local1)") (param $local1 i32)
        (call $puts (i32.const 0x0) (i32.const 13))
        (block $error
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )
)