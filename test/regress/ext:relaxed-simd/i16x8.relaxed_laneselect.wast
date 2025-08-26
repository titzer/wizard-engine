;; Tests for i8x16.relaxed_laneselect, i16x8.relaxed_laneselect, i32x4.relaxed_laneselect, and i64x2.relaxed_laneselect.
;; `either` comes from https://github.com/WebAssembly/threads.

(module
    (func (export "i16x8.relaxed_laneselect") (param v128 v128 v128) (result v128) (i16x8.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2)))

    (func (export "i16x8.relaxed_laneselect_cmp") (param v128 v128 v128) (result v128)
          (i16x8.eq
            (i16x8.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2))
            (i16x8.relaxed_laneselect (local.get 0) (local.get 1) (local.get 2))))
)

(assert_return (invoke "i16x8.relaxed_laneselect"
                       (v128.const i16x8 0      1 0x1234 0x1234 4 5 6 7)
                       (v128.const i16x8 8      9 0x5678 0x5678 12 13 14 15)
                       (v128.const i16x8 0xffff 0 0xff00 0x00ff 0 0 0 0))
               (either (v128.const i16x8 0      9 0x1278 0x5634 12 13 14 15)
                       (v128.const i16x8 0      9 0x1234 0x5678 12 13 14 15)))

;; special case for i16x8 to allow pblendvb
(assert_return (invoke "i16x8.relaxed_laneselect"
                       (v128.const i16x8 0      1 0x1234 0x1234 4 5 6 7)
                       (v128.const i16x8 8      9 0x5678 0x5678 12 13 14 15)
                       (v128.const i16x8 0xffff 0 0xff00 0x0080 0 0 0 0))  ;; 0x0080 is the special case
               (either (v128.const i16x8 0      9 0x1278 0x5678 12 13 14 15)  ;; bitselect
                       (v128.const i16x8 0      9 0x1234 0x5678 12 13 14 15)  ;; top bit of i16 lane examined
                       (v128.const i16x8 0      9 0x1278 0x5634 12 13 14 15)  ;; top bit of each byte
                       ))

;; Check that multiple calls to the relaxed instruction with same inputs returns same results.

(assert_return (invoke "i16x8.relaxed_laneselect_cmp"
                       (v128.const i16x8 0      1 0x1234 0x1234 4 5 6 7)
                       (v128.const i16x8 8      9 0x5678 0x5678 12 13 14 15)
                       (v128.const i16x8 0xffff 0 0xff00 0x00ff 0 0 0 0))
               (v128.const i16x8 -1 -1 -1 -1 -1 -1 -1 -1))
