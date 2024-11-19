;; TO RUN:
;; wasm-tools parse ./test/whamm/jit/correctness/simple_static-pred/simple.wat -o ./test/whamm/jit/correctness/simple_static-pred/simple.wasm
;; wizard -tw --monitors=./test/whamm/jit/correctness/simple_static-pred/simple.wasm ./test/monitors/profile_bytecode.wasm

;; EXPECTED OUTPUT:
;; hello world!
;; hello world!
;; hello world!

;; SUMMARY
;; - num_match_rules: 1
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
    (data (i32.const 0xc00) "hello world!\n")

    (func $br_pred (param $fid i32) (param $pc i32) (result i32)
        (i32.and
            (i32.eq (i32.const 1) (local.get $fid))
            (i32.eq (i32.const 323) (local.get $pc))
        )
    )
    (func $simple_probe (export "wasm:opcode:br / $br_pred(fid, pc) /")
        (call $puts (i32.const 0xc00) (i32.const 13))
    )
)