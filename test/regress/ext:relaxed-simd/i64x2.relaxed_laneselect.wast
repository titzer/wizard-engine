;; Tests for i8x16.relaxed_laneselect, i16x8.relaxed_laneselect, i32x4.relaxed_laneselect, and i64x2.relaxed_laneselect.
;; `either` comes from https://github.com/WebAssembly/threads.

(module
    (func (export "i64x2.relaxed_laneselect") (param v128 v128 v128) (result v128) (i64x2.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2)))

    (func (export "i64x2.relaxed_laneselect_cmp") (param v128 v128 v128) (result v128)
          (i64x2.eq
            (i64x2.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2))
            (i64x2.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2))))
)

(assert_return (invoke "i64x2.relaxed_laneselect"
                       (v128.const i64x2 0                  1)
                       (v128.const i64x2 2                  3)
                       (v128.const i64x2 0xffffffffffffffff 0))
               (either (v128.const i64x2 0                  3)
                       (v128.const i64x2 0                  3)))

(assert_return (invoke "i64x2.relaxed_laneselect"
                       (v128.const i64x2 0x1234123412341234 0x1234123412341234)
                       (v128.const i64x2 0x5678567856785678 0x5678567856785678)
                       (v128.const i64x2 0xffffffff00000000 0x00000000ffffffff))
               (either (v128.const i64x2 0x1234123456785678 0x5678567812341234)
                       (v128.const i64x2 0x1234123412341234 0x5678567856785678)))

;; Check that multiple calls to the relaxed instruction with same inputs returns same results.

(assert_return (invoke "i64x2.relaxed_laneselect_cmp"
                       (v128.const i64x2 0                  1)
                       (v128.const i64x2 2                  3)
                       (v128.const i64x2 0xffffffffffffffff 0))
               (v128.const i64x2 -1 -1))

(assert_return (invoke "i64x2.relaxed_laneselect_cmp"
                       (v128.const i64x2 0x1234123412341234 0x1234123412341234)
                       (v128.const i64x2 0x5678567856785678 0x5678567856785678)
                       (v128.const i64x2 0xffffffff00000000 0x00000000ffffffff))
               (v128.const i64x2 -1 -1))
