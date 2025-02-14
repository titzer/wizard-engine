(module binary
  "\00\61\73\6d\01\00\00\00\01\db\80\80\80\00\11\5f"
  "\03\7d\01\78\01\6e\01\60\03\7d\7f\6e\01\64\00\60"
  "\03\7d\7f\6e\00\60\00\01\64\00\60\00\00\60\01\63"
  "\00\01\7d\60\00\01\7d\60\01\63\00\01\7f\60\00\01"
  "\7f\60\01\63\00\01\6e\60\00\01\6e\60\02\63\00\7d"
  "\00\60\01\7d\00\60\02\63\00\7f\00\60\01\7f\00\60"
  "\02\63\00\6e\00\60\01\6e\00\03\94\80\80\80\00\13"
  "\01\02\03\04\05\06\07\08\07\08\09\0a\0b\0c\0d\0e"
  "\0f\10\04\06\87\80\80\80\00\01\63\00\01\d0\00\0b"
  "\07\f8\80\80\80\00\0a\03\6e\65\77\00\01\0b\6e\65"
  "\77\2d\64\65\66\61\75\6c\74\00\03\07\67\65\74\2d"
  "\66\33\32\00\05\08\67\65\74\2d\73\2d\69\38\00\07"
  "\08\67\65\74\2d\75\2d\69\38\00\09\0a\67\65\74\2d"
  "\61\6e\79\72\65\66\00\0b\07\73\65\74\2d\66\33\32"
  "\00\0d\06\73\65\74\2d\69\38\00\0f\0a\73\65\74\2d"
  "\61\6e\79\72\65\66\00\11\13\73\65\74\2d\61\6e\79"
  "\72\65\66\2d\6e\6f\6e\2d\6e\75\6c\6c\00\12\0a\f9"
  "\81\80\80\00\13\8b\80\80\80\00\00\20\00\20\01\20"
  "\02\fb\00\00\0b\8c\80\80\80\00\00\20\00\20\01\20"
  "\02\10\00\24\00\0b\85\80\80\80\00\00\fb\01\00\0b"
  "\86\80\80\80\00\00\10\02\24\00\0b\88\80\80\80\00"
  "\00\20\00\fb\02\00\00\0b\86\80\80\80\00\00\23\00"
  "\10\04\0b\88\80\80\80\00\00\20\00\fb\03\00\01\0b"
  "\86\80\80\80\00\00\23\00\10\06\0b\88\80\80\80\00"
  "\00\20\00\fb\04\00\01\0b\86\80\80\80\00\00\23\00"
  "\10\08\0b\88\80\80\80\00\00\20\00\fb\02\00\02\0b"
  "\86\80\80\80\00\00\23\00\10\0a\0b\8a\80\80\80\00"
  "\00\20\00\20\01\fb\05\00\00\0b\88\80\80\80\00\00"
  "\23\00\20\00\10\0c\0b\8a\80\80\80\00\00\20\00\20"
  "\01\fb\05\00\01\0b\88\80\80\80\00\00\23\00\20\00"
  "\10\0e\0b\8a\80\80\80\00\00\20\00\20\01\fb\05\00"
  "\02\0b\88\80\80\80\00\00\23\00\20\00\10\10\0b\89"
  "\80\80\80\00\00\23\00\fb\01\00\10\10\0b"
)
(assert_return
  (invoke "new" (f32.const 0x1p+0) (i32.const 0xffff_ffff) (ref.null any))
)
(assert_return (invoke "get-f32") (f32.const 0x1p+0))
(assert_return (invoke "get-s-i8") (i32.const 0xffff_ffff))
(assert_return (invoke "get-u-i8") (i32.const 0xff))
(assert_return (invoke "get-anyref") (ref.null any))
(assert_return (invoke "new-default"))
(assert_return (invoke "get-f32") (f32.const 0x0p+0))
(assert_return (invoke "get-s-i8") (i32.const 0x0))
(assert_return (invoke "get-u-i8") (i32.const 0x0))
(assert_return (invoke "get-anyref") (ref.null any))
(assert_return (invoke "set-f32" (f32.const 0x1p+1)))
(assert_return (invoke "get-f32") (f32.const 0x1p+1))
(assert_return (invoke "set-i8" (i32.const 0xffff_ffff)))
(assert_return (invoke "get-s-i8") (i32.const 0xffff_ffff))
(assert_return (invoke "get-u-i8") (i32.const 0xff))
(assert_return (invoke "set-anyref-non-null"))
(assert_return (invoke "get-anyref") (ref.struct))
(assert_return (invoke "set-anyref" (ref.null any)))
(assert_return (invoke "get-anyref") (ref.null any))
(module binary
  "\00\61\73\6d\01\00\00\00\01\8c\80\80\80\00\02\5f"
  "\02\7f\01\77\01\60\01\63\00\00\03\85\80\80\80\00"
  "\04\01\01\01\01\07\cd\80\80\80\00\04\0f\73\74\72"
  "\75\63\74\2e\67\65\74\2d\6e\75\6c\6c\00\00\11\73"
  "\74\72\75\63\74\2e\67\65\74\5f\73\2d\6e\75\6c\6c"
  "\00\01\11\73\74\72\75\63\74\2e\67\65\74\5f\75\2d"
  "\6e\75\6c\6c\00\02\0f\73\74\72\75\63\74\2e\73\65"
  "\74\2d\6e\75\6c\6c\00\03\0a\ba\80\80\80\00\04\89"
  "\80\80\80\00\00\20\00\fb\02\00\00\1a\0b\89\80\80"
  "\80\00\00\20\00\fb\03\00\01\1a\0b\89\80\80\80\00"
  "\00\20\00\fb\04\00\01\1a\0b\8a\80\80\80\00\00\20"
  "\00\41\00\fb\05\00\00\0b"
)
(assert_trap
  (invoke "struct.get-null" (ref.null none))
  "null structure reference"
)
(assert_trap
  (invoke "struct.get_s-null" (ref.null none))
  "null structure reference"
)
(assert_trap
  (invoke "struct.get_u-null" (ref.null none))
  "null structure reference"
)
(assert_trap
  (invoke "struct.set-null" (ref.null none))
  "null structure reference"
)
