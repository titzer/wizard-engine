;; Tests for i8x16.relaxed_laneselect, i16x8.relaxed_laneselect, i32x4.relaxed_laneselect, and i64x2.relaxed_laneselect.
;; `either` comes from https://github.com/WebAssembly/threads.

(module
    (func (export "i8x16.relaxed_laneselect") (param v128 v128 v128) (result v128) (i8x16.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2)))

    (func (export "i8x16.relaxed_laneselect_cmp") (param v128 v128 v128) (result v128)
          (i8x16.eq
            (i8x16.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2))
            (i8x16.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2))))
)

(assert_return (invoke "i8x16.relaxed_laneselect"
                       (v128.const i8x16 0    1  0x12 0x12 4 5 6 7 8 9 10 11 12 13 14 15)
                       (v128.const i8x16 16   17 0x34 0x34 20 21 22 23 24 25 26 27 28 29 30 31)
                       (v128.const i8x16 0xff 0  0xf0 0x0f 0 0 0 0 0 0 0 0 0 0 0 0))
               (either (v128.const i8x16 0    17 0x14 0x32 20 21 22 23 24 25 26 27 28 29 30 31)
                       (v128.const i8x16 0    17 0x12 0x34 20 21 22 23 24 25 26 27 28 29 30 31)))

;; Check that multiple calls to the relaxed instruction with same inputs returns same results.

(assert_return (invoke "i8x16.relaxed_laneselect_cmp"
                       (v128.const i8x16 0    1  0x12 0x12 4 5 6 7 8 9 10 11 12 13 14 15)
                       (v128.const i8x16 16   17 0x34 0x34 20 21 22 23 24 25 26 27 28 29 30 31)
                       (v128.const i8x16 0xff 0  0xf0 0x0f 0 0 0 0 0 0 0 0 0 0 0 0))
               (v128.const i8x16 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1 -1))
