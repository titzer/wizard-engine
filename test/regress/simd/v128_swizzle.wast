(module
;;   Swizzle and shuffle
  (func (export "v8x16_swizzle") (param v128 v128) (result v128)
    (i8x16.swizzle (local.get 0) (local.get 1)))
)

(assert_return (invoke "v8x16_swizzle"
  (v128.const i8x16 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31)
  (v128.const i8x16  0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15))
  (v128.const i8x16 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31))
(assert_return (invoke "v8x16_swizzle"
  (v128.const i8x16 -16 -15 -14 -13 -12 -11 -10 -9 -8 -7 -6 -5 -4 -3 -2 -1)
  (v128.const i8x16  -8  -7  -6  -5  -4  -3  -2 -1 16 17 18 19 20 21 22 23))
  (v128.const i8x16   0   0   0   0   0   0   0  0  0  0  0  0  0  0  0  0))
(assert_return (invoke "v8x16_swizzle"
  (v128.const i8x16 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115)
  (v128.const i8x16  15  14  13  12  11  10   9   8   7   6   5   4   3   2   1   0))
  (v128.const i8x16 115 114 113 112 111 110 109 108 107 106 105 104 103 102 101 100))
(assert_return (invoke "v8x16_swizzle"
  (v128.const i8x16 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115)
  (v128.const i8x16  -1   1  -2   2  -3   3  -4   4  -5   5  -6   6  -7   7  -8   8))
  (v128.const i8x16   0 101   0 102   0 103   0 104   0 105   0 106   0 107   0 108))
(assert_return (invoke "v8x16_swizzle"
  (v128.const i8x16 100 101 102 103 104 105 106 107 108 109 110 111 112 113 114 115)
  (v128.const i8x16   9  16  10  17  11  18  12  19  13  20  14  21  15  22  16  23))
  (v128.const i8x16 109   0 110   0 111   0 112   0 113   0 114   0 115   0   0   0))
(assert_return (invoke "v8x16_swizzle"
  (v128.const i8x16 0x64 0x65 0x66 0x67 0x68 0x69 0x6a 0x6b 0x6c 0x6d 0x6e 0x6f 0x70 0x71 0x72 0x73)
  (v128.const i8x16    9   16   10   17  11    18   12   19  13    20   14   21   15   22   16   23))
  (v128.const i8x16 0x6d    0 0x6e    0 0x6f    0 0x70    0 0x71    0 0x72    0 0x73    0    0    0))
(assert_return (invoke "v8x16_swizzle"
  (v128.const i16x8 0x6465 0x6667 0x6869 0x6a6b 0x6c6d 0x6e6f 0x7071 0x7273)
  (v128.const i8x16 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15))
  (v128.const i16x8 0x6465 0x6667 0x6869 0x6a6b 0x6c6d 0x6e6f 0x7071 0x7273))
(assert_return (invoke "v8x16_swizzle"
  (v128.const i32x4 0x64656667 0x68696a6b 0x6c6d6e6f 0x70717273)
  (v128.const i8x16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0))
  (v128.const i32x4 0x73727170 0x6f6e6d6c 0x6b6a6968 0x67666564))
(assert_return (invoke "v8x16_swizzle"
  (v128.const f32x4 nan -nan inf -inf)
  (v128.const i8x16 0  1  2  3  4  5  6  7  8  9 10 11 12 13 14 15))
  (v128.const i32x4 0x7fc00000 0xffc00000 0x7f800000 0xff800000))
(assert_return (invoke "v8x16_swizzle"
  (v128.const i32x4 0x67666564 0x6b6a6968 0x6f6e6d5c 0x73727170)
  (v128.const f32x4 0.0 -0.0 inf -inf))
  (v128.const i32x4 0x64646464 0x00646464 0x00006464 0x00006464))


;; More literals
(assert_return (invoke "v8x16_swizzle"
  (v128.const i32x4 1_234_567_890 0x1234_5678 01_234_567_890 0x0_1234_5678)
  (v128.const i8x16 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15))
  (v128.const i32x4 0x4996_02d2 0x1234_5678 0x4996_02d2 0x1234_5678))

;;   Invalid types for swizzle and shuffle values
(assert_invalid (module (func (result v128)
  (i8x16.swizzle (i32.const 1) (v128.const i8x16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0)))) "type mismatch")
(assert_invalid (module (func (result v128)
  (i8x16.swizzle (v128.const i8x16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1 0) (i32.const 2)))) "type mismatch")
