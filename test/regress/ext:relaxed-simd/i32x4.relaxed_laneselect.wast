;; Tests for i8x16.relaxed_laneselect, i16x8.relaxed_laneselect, i32x4.relaxed_laneselect, and i64x2.relaxed_laneselect.
;; `either` comes from https://github.com/WebAssembly/threads.

(module
    (func (export "i32x4.relaxed_laneselect") (param v128 v128 v128) (result v128) (i32x4.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2)))

    (func (export "i32x4.relaxed_laneselect_cmp") (param v128 v128 v128) (result v128)
          (i32x4.eq
            (i32x4.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2))
            (i32x4.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2))))
)

(assert_return (invoke "i32x4.relaxed_laneselect"
                       (v128.const i32x4 0          1 0x12341234 0x12341234)
                       (v128.const i32x4 4          5 0x56785678 0x56785678)
                       (v128.const i32x4 0xffffffff 0 0xffff0000 0x0000ffff))
               (either (v128.const i32x4 0          5 0x12345678 0x56781234)
                       (v128.const i32x4 0          5 0x12341234 0x56785678)))

;; Check that multiple calls to the relaxed instruction with same inputs returns same results.

(assert_return (invoke "i32x4.relaxed_laneselect_cmp"
                       (v128.const i32x4 0          1 0x12341234 0x12341234)
                       (v128.const i32x4 4          5 0x56785678 0x56785678)
                       (v128.const i32x4 0xffffffff 0 0xffff0000 0x0000ffff))
               (v128.const i32x4 -1 -1 -1 -1))
