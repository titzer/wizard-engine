(module binary
  "\00\61\73\6d\01\00\00\00\01\97\80\80\80\00\02\60"
  "\04\7f\7e\7d\7c\04\7c\7d\7e\7f\60\04\7f\7e\7d\7c"
  "\04\7c\7d\7e\7f\03\82\80\80\80\00\01\00\05\83\80"
  "\80\80\00\01\00\01\07\88\80\80\80\00\01\04\6d\61"
  "\69\6e\00\00\0e\83\80\80\80\00\01\00\00\0a\98\80"
  "\80\80\00\01\16\00\20\00\20\01\20\02\20\03\41\10"
  "\41\11\fb\27\00\00\01\00\14\01\0b\0b\97\80\80\80"
  "\00\01\00\41\10\0b\11\00\20\03\20\02\20\01\41\01"
  "\ac\7c\20\00\41\03\6c\0b"
)
(assert_return (invoke "main" (i32.const 5) (i64.const 41) (f32.const 0x1.4p+1) (f64.const -0x1.fp+2)) (f64.const -0x1.fp+2) (f32.const 0x1.4p+1) (i64.const 42) (i32.const 15))
(assert_return (invoke "main" (i32.const -2) (i64.const -1) (f32.const -0x0p+0) (f64.const 0x1.7e43c8800759cp+996)) (f64.const 0x1.7e43c8800759cp+996) (f32.const -0x0p+0) (i64.const 0) (i32.const -6))
(assert_return (invoke "main" (i32.const 0x7fffffff) (i64.const 0x7fffffffffffffff) (f32.const 0x1p-149) (f64.const 0x1p-1074)) (f64.const 0x1p-1074) (f32.const 0x1p-149) (i64.const 0x8000000000000000) (i32.const 0x7ffffffd))
