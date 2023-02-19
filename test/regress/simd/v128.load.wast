;; v128.load operater with normal argument (e.g. (i8x16, i16x8 i32x4))

(module
  (memory 1)
  (data (i32.const 0) "\00\01\02\03\04\05\06\07\08\09\0a\0b\0c\0d\0e\0f\00\01\02\03")
  (func (export "v128.load") (result v128)
    (v128.load (i32.const 0))
  )
)

(assert_return (invoke "v128.load") (v128.const i8x16 0x00 0x01 0x02 0x03 0x04 0x05 0x06 0x07 0x08 0x09 0x0a 0x0b 0x0c 0x0d 0x0e 0x0f))
(assert_return (invoke "v128.load") (v128.const i16x8 0x0100 0x0302 0x0504 0x0706 0x0908 0x0b0a 0x0d0c 0x0f0e))
(assert_return (invoke "v128.load") (v128.const i32x4 0x03020100 0x07060504 0x0b0a0908 0x0f0e0d0c))