;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/simple/simple_overlap.wat -o ./test/whamm/jit/correctness/simple/simple_overlap.wasm
;; wizard --monitors=./test/whamm/jit/correctness/simple/simple_overlap.wasm ./test/monitors/branch_monitor.wasm

;; EXPECTED OUTPUT:
;; call0!
;; call1!
;; call0!
;; call1!
;; call0!
;; call1!
;; call0!
;; call1!

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
)