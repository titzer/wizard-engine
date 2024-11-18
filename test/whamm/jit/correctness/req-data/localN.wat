;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/req-data/localN.wat -o ./test/whamm/jit/correctness/req-data/localN.wasm
;; wizard --monitors=./test/whamm/jit/correctness/req-data/localN.wasm ./test/monitors/whamm/locals_to_call.wasm

;; EXPECTED OUTPUT:
;; NONE

;; SUMMARY
;; - num_match_rules: 1
;; - overlapping? false
;; - predicated?
;;   - static: false
;;   - dynamic: false
;; - requested_data:
;;   - predicate: N/A
;;   - body: localN
;; - $alloc function? false
;; - END? false
;; - multi-memory? false
(module
    (import "wizeng" "puti" (func $puti (param i32)))
    (import "wizeng" "puts" (func $puts (param i32 i32)))

    ;; out of order to test that the order is not assumed for these!
    (func $simple_probe (export "wasm:opcode:call (local1, local0)") (param $local1 i32) (param $local0 i32)
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $local0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )
)