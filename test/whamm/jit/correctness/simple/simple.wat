;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/simple/simple.wat -o ./test/whamm/jit/correctness/simple/simple.wasm
;; wizard --monitors=./test/whamm/jit/correctness/simple/simple.wasm ./test/monitors/branch_monitor.wasm

;; EXPECTED OUTPUT:
;; hello world!
;; hello world!

;; SUMMARY
;; - num_match_rules: 1
;; - overlapping? false
;; - predicated?
;;   - static: false
;;   - dynamic: false
;; - requested_data:
;;   - predicate: N/A
;;   - body: None
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
(module
    (import "wizeng" "puti" (func $puti (param i32)))
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0xc00) "hello world!\n")

    (func $simple_probe (export "wasm:opcode:br")
        (call $puts (i32.const 0xc00) (i32.const 13))
    )
)