;; SUMMARY
;; - num_match_rules: 2
;; - overlapping? true
;; - predicated?
;;   - static: true
;;   - dynamic: false
;; - requested_data:
;;   - predicate: fid, pc
;;   - body: None
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
;; - linking? false
(module
    (import "wizeng" "puti" (func $puti (param i32)))
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0x0) "call0!\n")
    (data (i32.const 0xFF) "call1!\n")

    (func $call_pred0 (param $fid i32) (result i32)
        (i32.eq (i32.const 6) (local.get $fid))
    )
    (func $call_probe0 (export "wasm:opcode:call / $call_pred0(fid) /")
        (call $puts (i32.const 0x0) (i32.const 7))
    )

    (func $call_pred1 (param $fid i32) (param $pc i32) (result i32)
        (i32.and
            (i32.eq (i32.const 6) (local.get $fid))
            (i32.eq (i32.const 0) (local.get $pc))
        )
    )
    (func $call_probe1 (export "wasm:opcode:call / $call_pred1(fid, pc) /")
        (call $puts (i32.const 0xFF) (i32.const 7))
    )
)