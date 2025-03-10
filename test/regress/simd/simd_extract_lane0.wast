(module
  (global $g1 (mut v128)
    (v128.const i8x16  0xF0  0xF1  0xF2  0xF3  0xF4  0xF5  0xF6  0xF7  0xF8  0xF9  0xFA  0xFB  0xFC  0xFD  0xFE  0xFF))
  (func (export "get0") (result i32) (i32x4.extract_lane 0 (global.get $g1)))
  (func (export "get1") (result i32) (i32x4.extract_lane 1 (global.get $g1)))
  (func (export "get2") (result i32) (i32x4.extract_lane 2 (global.get $g1)))
  (func (export "get3") (result i32) (i32x4.extract_lane 3 (global.get $g1)))
  (func (export "set") (param v128) (global.set $g1 (local.get 0)))
)

(assert_return (invoke "get0") (i32.const 0xF3F2F1F0))
(assert_return (invoke "get1") (i32.const 0xF7F6F5F4))
(assert_return (invoke "get2") (i32.const 0xFBFAF9F8))
(assert_return (invoke "get3") (i32.const 0xFFFEFDFC))

(assert_return (invoke "set"
    (v128.const i8x16  0x01  0x02  0x03  0x04  0x05  0x06  0x07  0x08  0x09  0x0A  0x0B  0x0C  0x0D  0x0E  0x0F  0x00)))

(assert_return (invoke "get0") (i32.const 0x04030201))
(assert_return (invoke "get1") (i32.const 0x08070605))
(assert_return (invoke "get2") (i32.const 0x0C0B0A09))
(assert_return (invoke "get3") (i32.const 0x000F0E0D))
