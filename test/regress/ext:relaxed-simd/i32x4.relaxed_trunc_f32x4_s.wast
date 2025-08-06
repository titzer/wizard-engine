;; Tests for i32x4.relaxed_trunc_f32x4_s
;; `either` comes from https://github.com/WebAssembly/threads.

(module
    (func (export "i32x4.relaxed_trunc_f32x4_s") (param v128) (result v128) (i32x4.relaxed_trunc_f32x4_s (local.get 0)))

    (func (export "i32x4.relaxed_trunc_f32x4_s_cmp") (param v128) (result v128)
          (i32x4.eq
            (i32x4.relaxed_trunc_f32x4_s (local.get 0))
            (i32x4.relaxed_trunc_f32x4_s (local.get 0))))
)

;; Test some edge cases around min/max to ensure that the instruction either
;; saturates correctly or returns INT_MIN.
;;
;; Note, though, that INT_MAX itself is not tested. The value for INT_MAX is
;; 2147483647 but that is not representable in a `f32` since it requires 31 bits
;; when a f32 has only 24 bits available. This means that the closest integers
;; to INT_MAX which can be represented are 2147483520 and 2147483648, meaning
;; that the INT_MAX test case cannot be tested.
(assert_return (invoke "i32x4.relaxed_trunc_f32x4_s"
                       ;;                INT32_MIN     <INT32_MIN        >INT32_MAX
                       (v128.const f32x4 -2147483648.0 -2147483904.0 2.0 2147483904.0))
               ;; out of range -> saturate or INT32_MIN
               (either (v128.const i32x4 -2147483648 -2147483648 2 2147483647)
                       (v128.const i32x4 -2147483648 -2147483648 2 -2147483648)))

(assert_return (invoke "i32x4.relaxed_trunc_f32x4_s"
                       (v128.const f32x4 nan -nan nan:0x444444 -nan:0x444444))
               ;; nans -> 0 or INT32_MIN
               (either (v128.const i32x4 0 0 0 0)
                       (v128.const i32x4 0x80000000 0x80000000 0x80000000 0x80000000)))


;; Check that multiple calls to the relaxed instruction with same inputs returns same results.

(assert_return (invoke "i32x4.relaxed_trunc_f32x4_s_cmp"
                       ;; INT32_MIN <INT32_MIN INT32_MAX >INT32_MAX
                       (v128.const f32x4 -2147483648.0 -2147483904.0 2147483647.0 2147483904.0))
               ;; out of range -> saturate or INT32_MIN
               (v128.const i32x4 -1 -1 -1 -1))

(assert_return (invoke "i32x4.relaxed_trunc_f32x4_s_cmp"
                       (v128.const f32x4 nan -nan nan:0x444444 -nan:0x444444))
               ;; nans -> 0 or INT32_MIN
               (v128.const i32x4 -1 -1 -1 -1))

