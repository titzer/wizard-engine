;; SUMMARY
;; - num_match_rules: 2
;; - overlapping? true
;; - predicated?
;;   - static: false
;;   - dynamic: false
;; - requested_data:
;;   - predicate: N/A
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

    (func $call_probe0 (export "wasm:opcode:call")
        (call $puts (i32.const 0x0) (i32.const 7))
    )

    (func $call_probe1 (export "wasm:opcode:call()")
        (call $puts (i32.const 0xFF) (i32.const 7))
    )

    ;; NOTE: The behavior is that it's applying the same function multiple times...not the one that's tied to this specific probe!
    ;;       uncomment this function below for a demonstration (will print "call*" 6 times instead of 4)
    ;; (func $call_probe2 (export "wasm:opcode:call() ")
    ;;     (call $puts (i32.const 0xFF) (i32.const 7))
    ;; )
)