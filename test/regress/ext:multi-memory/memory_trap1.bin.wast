(module binary
  "\00\61\73\6d\01\00\00\00\01\a9\80\80\80\00\08\60"
  "\01\7f\01\7f\60\01\7f\01\7e\60\01\7f\01\7d\60\01"
  "\7f\01\7c\60\02\7f\7f\00\60\02\7f\7e\00\60\02\7f"
  "\7d\00\60\02\7f\7c\00\03\98\80\80\80\00\17\00\01"
  "\02\03\00\00\00\00\01\01\01\01\01\01\04\05\06\07"
  "\04\04\05\05\05\05\87\80\80\80\00\03\00\00\00\00"
  "\00\01\07\b3\82\80\80\00\17\08\69\33\32\2e\6c\6f"
  "\61\64\00\00\08\69\36\34\2e\6c\6f\61\64\00\01\08"
  "\66\33\32\2e\6c\6f\61\64\00\02\08\66\36\34\2e\6c"
  "\6f\61\64\00\03\0b\69\33\32\2e\6c\6f\61\64\38\5f"
  "\73\00\04\0b\69\33\32\2e\6c\6f\61\64\38\5f\75\00"
  "\05\0c\69\33\32\2e\6c\6f\61\64\31\36\5f\73\00\06"
  "\0c\69\33\32\2e\6c\6f\61\64\31\36\5f\75\00\07\0b"
  "\69\36\34\2e\6c\6f\61\64\38\5f\73\00\08\0b\69\36"
  "\34\2e\6c\6f\61\64\38\5f\75\00\09\0c\69\36\34\2e"
  "\6c\6f\61\64\31\36\5f\73\00\0a\0c\69\36\34\2e\6c"
  "\6f\61\64\31\36\5f\75\00\0b\0c\69\36\34\2e\6c\6f"
  "\61\64\33\32\5f\73\00\0c\0c\69\36\34\2e\6c\6f\61"
  "\64\33\32\5f\75\00\0d\09\69\33\32\2e\73\74\6f\72"
  "\65\00\0e\09\69\36\34\2e\73\74\6f\72\65\00\0f\09"
  "\66\33\32\2e\73\74\6f\72\65\00\10\09\66\36\34\2e"
  "\73\74\6f\72\65\00\11\0a\69\33\32\2e\73\74\6f\72"
  "\65\38\00\12\0b\69\33\32\2e\73\74\6f\72\65\31\36"
  "\00\13\0a\69\36\34\2e\73\74\6f\72\65\38\00\14\0b"
  "\69\36\34\2e\73\74\6f\72\65\31\36\00\15\0b\69\36"
  "\34\2e\73\74\6f\72\65\33\32\00\16\0a\be\82\80\80"
  "\00\17\88\80\80\80\00\00\20\00\28\42\02\00\0b\88"
  "\80\80\80\00\00\20\00\29\43\02\00\0b\88\80\80\80"
  "\00\00\20\00\2a\42\02\00\0b\88\80\80\80\00\00\20"
  "\00\2b\43\02\00\0b\88\80\80\80\00\00\20\00\2c\40"
  "\02\00\0b\88\80\80\80\00\00\20\00\2d\40\02\00\0b"
  "\88\80\80\80\00\00\20\00\2e\41\02\00\0b\88\80\80"
  "\80\00\00\20\00\2f\41\02\00\0b\88\80\80\80\00\00"
  "\20\00\30\40\02\00\0b\88\80\80\80\00\00\20\00\31"
  "\40\02\00\0b\88\80\80\80\00\00\20\00\32\41\02\00"
  "\0b\88\80\80\80\00\00\20\00\33\41\02\00\0b\88\80"
  "\80\80\00\00\20\00\34\42\02\00\0b\88\80\80\80\00"
  "\00\20\00\35\42\02\00\0b\8a\80\80\80\00\00\20\00"
  "\20\01\36\42\02\00\0b\8a\80\80\80\00\00\20\00\20"
  "\01\37\43\02\00\0b\8a\80\80\80\00\00\20\00\20\01"
  "\38\42\02\00\0b\8a\80\80\80\00\00\20\00\20\01\39"
  "\43\02\00\0b\8a\80\80\80\00\00\20\00\20\01\3a\40"
  "\02\00\0b\8a\80\80\80\00\00\20\00\20\01\3b\41\02"
  "\00\0b\8a\80\80\80\00\00\20\00\20\01\3c\40\02\00"
  "\0b\8a\80\80\80\00\00\20\00\20\01\3d\41\02\00\0b"
  "\8a\80\80\80\00\00\20\00\20\01\3e\42\02\00\0b\0b"
  "\9f\80\80\80\00\02\02\02\41\00\0b\08\61\62\63\64"
  "\65\66\67\68\02\02\41\f8\ff\03\0b\08\61\62\63\64"
  "\65\66\67\68"
)
(assert_trap
  (invoke "i32.store" (i32.const 0x1_0000) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 0xffff) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 0xfffe) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 0xfffd) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 0xffff_ffff) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 0xffff_fffe) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 0xffff_fffd) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store" (i32.const 0xffff_fffc) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0x1_0000) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xfffe) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xfffd) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xfffc) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xfffb) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xfffa) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xfff9) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff_ffff) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff_fffe) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff_fffd) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff_fffc) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff_fffb) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff_fffa) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff_fff9) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store" (i32.const 0xffff_fff8) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 0x1_0000) (f32.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 0xffff) (f32.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 0xfffe) (f32.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 0xfffd) (f32.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 0xffff_ffff) (f32.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 0xffff_fffe) (f32.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 0xffff_fffd) (f32.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.store" (i32.const 0xffff_fffc) (f32.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0x1_0000) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xfffe) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xfffd) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xfffc) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xfffb) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xfffa) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xfff9) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff_ffff) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff_fffe) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff_fffd) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff_fffc) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff_fffb) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff_fffa) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff_fff9) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.store" (i32.const 0xffff_fff8) (f64.const 0x0p+0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store8" (i32.const 0x1_0000) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store8" (i32.const 0xffff_ffff) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store16" (i32.const 0x1_0000) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store16" (i32.const 0xffff) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store16" (i32.const 0xffff_ffff) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.store16" (i32.const 0xffff_fffe) (i32.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store8" (i32.const 0x1_0000) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store8" (i32.const 0xffff_ffff) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store16" (i32.const 0x1_0000) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store16" (i32.const 0xffff) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store16" (i32.const 0xffff_ffff) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store16" (i32.const 0xffff_fffe) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 0x1_0000) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 0xffff) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 0xfffe) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 0xfffd) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 0xffff_ffff) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 0xffff_fffe) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 0xffff_fffd) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.store32" (i32.const 0xffff_fffc) (i64.const 0x0))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 0xfffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 0xfffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 0xffff_fffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load" (i32.const 0xffff_fffc))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xfffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xfffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xfffc))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xfffb))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xfffa))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xfff9))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff_fffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff_fffc))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff_fffb))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff_fffa))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff_fff9))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load" (i32.const 0xffff_fff8))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 0xfffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 0xfffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 0xffff_fffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f32.load" (i32.const 0xffff_fffc))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xfffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xfffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xfffc))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xfffb))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xfffa))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xfff9))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff_fffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff_fffc))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff_fffb))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff_fffa))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff_fff9))
  "out of bounds memory access"
)
(assert_trap
  (invoke "f64.load" (i32.const 0xffff_fff8))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load8_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load8_s" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load8_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load8_u" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_s" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_s" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_s" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_u" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_u" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i32.load16_u" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load8_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load8_s" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load8_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load8_u" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_s" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_s" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_s" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_u" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_u" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load16_u" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 0xfffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 0xfffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 0xffff_fffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_s" (i32.const 0xffff_fffc))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 0xffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 0xfffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 0xfffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 0xffff_ffff))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 0xffff_fffe))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 0xffff_fffd))
  "out of bounds memory access"
)
(assert_trap
  (invoke "i64.load32_u" (i32.const 0xffff_fffc))
  "out of bounds memory access"
)
(assert_return
  (invoke "i64.load" (i32.const 0xfff8))
  (i64.const 0x6867_6665_6463_6261)
)
(assert_return
  (invoke "i64.load" (i32.const 0x0))
  (i64.const 0x6867_6665_6463_6261)
)
(assert_return (invoke "i64.store" (i32.const 0xfff8) (i64.const 0x0)))
(assert_trap
  (invoke "i32.store" (i32.const 0xfffd) (i32.const 0x1234_5678))
  "out of bounds memory access"
)
(assert_return (invoke "i32.load" (i32.const 0xfffc)) (i32.const 0x0))
(assert_trap
  (invoke "i64.store" (i32.const 0xfff9) (i64.const 0x1234_5678_90ab_cdef))
  "out of bounds memory access"
)
(assert_return (invoke "i64.load" (i32.const 0xfff8)) (i64.const 0x0))
(assert_trap
  (invoke "f32.store" (i32.const 0xfffd) (f32.const 0x1.2345_68p+28))
  "out of bounds memory access"
)
(assert_return (invoke "f32.load" (i32.const 0xfffc)) (f32.const 0x0p+0))
(assert_trap
  (invoke "f64.store" (i32.const 0xfff9) (f64.const 0x1.2345_6789_0abc_ep+60))
  "out of bounds memory access"
)
(assert_return (invoke "f64.load" (i32.const 0xfff8)) (f64.const 0x0p+0))
