(module binary
  "\00\61\73\6d\01\00\00\00\01\07\01\60\02\7f\7b\01"
  "\7b\03\02\01\00\05\03\01\00\01\07\16\01\12\6c\6f"
  "\61\64\38\5f\6c\61\6e\65\5f\72\65\70\6c\61\63\65"
  "\00\00\0a\0d\01\0b\00\20\00\20\01\fd\54\00\00\07"
  "\0b\0b\07\01\00\41\00\0b\01\02"
)
;; Test that v128.load8_lane replaces the target lane instead of ORing.
;; Memory[0] = 0x02. Lane 7 of v128 input has 0x01.
;; Correct: lane 7 = 0x02 (replaced). Bug: lane 7 = 0x03 (ORed).
(assert_return
  (invoke "load8_lane_replace"
    (i32.const 0)
    (v128.const i8x16 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0))
  (v128.const i8x16 0 0 0 0 0 0 0 2 0 0 0 0 0 0 0 0))

;; Same test with other lanes non-zero to verify they are preserved.
(assert_return
  (invoke "load8_lane_replace"
    (i32.const 0)
    (v128.const i8x16 0xAA 0xBB 0xCC 0xDD 0xEE 0xFF 0x11 0x03 0x22 0x33 0x44 0x55 0x66 0x77 0x88 0x99))
  (v128.const i8x16 0xAA 0xBB 0xCC 0xDD 0xEE 0xFF 0x11 0x02 0x22 0x33 0x44 0x55 0x66 0x77 0x88 0x99))
