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
;; - linking? false
(module
    (import "wizeng" "puts" (func $puts (param i32 i32)))
    (memory (export "mem") 1 1)
    (data (i32.const 0xc00) "hello world!\n")

    ;; out of order to test that the order is not assumed for these!
    (func $simple_probe (export "wasm:opcode:call(local1, local0)") (param $local1 i32) (param $local0 i32)
        (call $puts (i32.const 0xc00) (i32.const 13))
        (block $error
            (br_if $error (i32.ne (i32.const 1) (local.get $local0)))
            (br_if $error (i32.ne (i32.const 2) (local.get $local1)))
            return
        )
        unreachable
    )
)