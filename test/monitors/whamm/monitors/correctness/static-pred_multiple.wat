;; SUMMARY
;; - num_match_rules: 2
;; - overlapping? false
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
    (data (i32.const 0x0) "hello br_if!\n")
    (data (i32.const 0xFF) "hello call!\n")

    (func $brif_pred (param $fid i32) (result i32)
        (i32.eq (i32.const 1) (local.get $fid))
    )
    (func $brif_probe (export "wasm:opcode:br_if / $brif_pred(fid) /")
        (call $puts (i32.const 0x0) (i32.const 13))
    )

    (func $call_pred (param $fid i32) (param $pc i32) (result i32)
        (i32.and
            (i32.eq (i32.const 1) (local.get $fid))
            (i32.eq (i32.const 25) (local.get $pc))
        )
    )
    (func $call_probe (export "wasm:opcode:call / $call_pred(fid, pc) /")
        (call $puts (i32.const 0xFF) (i32.const 12))
    )
)