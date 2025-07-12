;; Tests for i32x4.relaxed_trunc_f32x4_u
;; `either` comes from https://github.com/WebAssembly/threads.

(module
    (func (export "i32x4.relaxed_trunc_f32x4_u") (param v128) (result v128) (i32x4.relaxed_trunc_f32x4_u (local.get 0)))

    (func (export "i32x4.relaxed_trunc_f32x4_u_cmp") (param v128) (result v128)
          (i32x4.eq
            (i32x4.relaxed_trunc_f32x4_u (local.get 0))
            (i32x4.relaxed_trunc_f32x4_u (local.get 0))))
)

;; Test some edge cases around min/max to ensure that the instruction either
;; saturates correctly or returns INT_MIN.
;;
;; Note, though, that INT_MAX itself is not tested. The value for INT_MAX is
;; 2147483647 but that is not representable in a `f32` since it requires 31 bits
;; when a f32 has only 24 bits available. This means that the closest integers
;; to INT_MAX which can be represented are 2147483520 and 2147483648, meaning
;; that the INT_MAX test case cannot be tested.
(assert_return (invoke "i32x4.relaxed_trunc_f32x4_u"
                       ;; UINT32_MIN UINT32_MIN-1 <UINT32_MAX UINT32_MAX+1
                       (v128.const f32x4 0 -1.0 4294967040.0 4294967296.0))
               ;; out of range -> saturate or UINT32_MAX
               (either (v128.const i32x4 0 0 4294967040 0xffffffff)
                       (v128.const i32x4 0 0xffffffff 4294967040 0xffffffff)))

(assert_return (invoke "i32x4.relaxed_trunc_f32x4_u"
                       (v128.const f32x4 nan -nan nan:0x444444 -nan:0x444444))
               ;; nans -> 0 or UINT32_MAX
               (either (v128.const i32x4 0 0 0 0)
                       (v128.const i32x4 0xffffffff 0xffffffff 0xffffffff 0xffffffff)))

;; Check that multiple calls to the relaxed instruction with same inputs returns same results.

(assert_return (invoke "i32x4.relaxed_trunc_f32x4_u_cmp"
                       ;; UINT32_MIN UINT32_MIN-1 <UINT32_MAX UINT32_MAX+1
                       (v128.const f32x4 0 -1.0 4294967040.0 4294967296.0))
               ;; out of range -> saturate or UINT32_MAX
               (v128.const i32x4 -1 -1 -1 -1))

(assert_return (invoke "i32x4.relaxed_trunc_f32x4_u_cmp"
                       (v128.const f32x4 nan -nan nan:0x444444 -nan:0x444444))
               ;; nans -> 0 or UINT32_MAX
               (v128.const i32x4 -1 -1 -1 -1))
