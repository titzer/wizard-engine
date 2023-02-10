(module binary
  "\00\61\73\6d\01\00\00\00\01\85\80\80\80\00\01\60"
  "\01\7f\00\03\8f\80\80\80\00\0e\00\00\00\00\00\00"
  "\00\00\00\00\00\00\00\00\05\87\80\80\80\00\03\00"
  "\01\00\01\00\01\07\a1\82\80\80\00\0e\0f\6e\6f\5f"
  "\64\63\65\2e\69\33\32\2e\6c\6f\61\64\00\00\13\6e"
  "\6f\5f\64\63\65\2e\69\33\32\2e\6c\6f\61\64\31\36"
  "\5f\73\00\01\13\6e\6f\5f\64\63\65\2e\69\33\32\2e"
  "\6c\6f\61\64\31\36\5f\75\00\02\12\6e\6f\5f\64\63"
  "\65\2e\69\33\32\2e\6c\6f\61\64\38\5f\73\00\03\12"
  "\6e\6f\5f\64\63\65\2e\69\33\32\2e\6c\6f\61\64\38"
  "\5f\75\00\04\0f\6e\6f\5f\64\63\65\2e\69\36\34\2e"
  "\6c\6f\61\64\00\05\13\6e\6f\5f\64\63\65\2e\69\36"
  "\34\2e\6c\6f\61\64\33\32\5f\73\00\06\13\6e\6f\5f"
  "\64\63\65\2e\69\36\34\2e\6c\6f\61\64\33\32\5f\75"
  "\00\07\13\6e\6f\5f\64\63\65\2e\69\36\34\2e\6c\6f"
  "\61\64\31\36\5f\73\00\08\13\6e\6f\5f\64\63\65\2e"
  "\69\36\34\2e\6c\6f\61\64\31\36\5f\75\00\09\12\6e"
  "\6f\5f\64\63\65\2e\69\36\34\2e\6c\6f\61\64\38\5f"
  "\73\00\0a\12\6e\6f\5f\64\63\65\2e\69\36\34\2e\6c"
  "\6f\61\64\38\5f\75\00\0b\0f\6e\6f\5f\64\63\65\2e"
  "\66\33\32\2e\6c\6f\61\64\00\0c\0f\6e\6f\5f\64\63"
  "\65\2e\66\36\34\2e\6c\6f\61\64\00\0d\0a\c5\81\80"
  "\80\00\0e\89\80\80\80\00\00\20\00\28\42\01\00\1a"
  "\0b\89\80\80\80\00\00\20\00\2e\41\01\00\1a\0b\89"
  "\80\80\80\00\00\20\00\2f\41\01\00\1a\0b\89\80\80"
  "\80\00\00\20\00\2c\40\01\00\1a\0b\89\80\80\80\00"
  "\00\20\00\2d\40\01\00\1a\0b\89\80\80\80\00\00\20"
  "\00\29\43\01\00\1a\0b\89\80\80\80\00\00\20\00\34"
  "\42\01\00\1a\0b\89\80\80\80\00\00\20\00\35\42\02"
  "\00\1a\0b\89\80\80\80\00\00\20\00\32\41\02\00\1a"
  "\0b\89\80\80\80\00\00\20\00\33\41\02\00\1a\0b\89"
  "\80\80\80\00\00\20\00\30\40\02\00\1a\0b\89\80\80"
  "\80\00\00\20\00\31\40\02\00\1a\0b\89\80\80\80\00"
  "\00\20\00\2a\42\02\00\1a\0b\89\80\80\80\00\00\20"
  "\00\2b\43\02\00\1a\0b"
)
(assert_trap
  (invoke "no_dce.i32.load" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load16_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load16_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load8_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i32.load8_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load32_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load32_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load16_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load16_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load8_s" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.i64.load8_u" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.f32.load" (i32.const 0x1_0000))
  "out of bounds memory access"
)
(assert_trap
  (invoke "no_dce.f64.load" (i32.const 0x1_0000))
  "out of bounds memory access"
)
