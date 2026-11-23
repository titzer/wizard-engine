(module definition binary
  "\00\61\73\6d\01\00\00\00\01\b0\80\80\80\00\0a\5f"
  "\01\7f\01\50\00\5f\01\7f\01\50\01\01\5f\02\7f\01"
  "\7e\00\5e\7f\01\60\00\01\7f\60\01\7f\00\60\00\00"
  "\60\01\7f\01\7f\60\02\7f\7f\00\60\00\01\7e\03\96"
  "\80\80\80\00\15\04\05\05\06\04\04\04\04\04\07\08"
  "\06\04\04\05\04\04\09\05\04\04\06\cd\80\80\80\00"
  "\0a\6b\01\d0\6b\0b\6a\01\d0\6a\0b\6d\01\d0\6d\0b"
  "\6e\01\d0\6e\0b\64\00\01\41\e4\00\fb\00\00\0b\63"
  "\00\01\d0\00\0b\64\03\01\41\03\41\05\fb\06\03\0b"
  "\63\01\01\41\c8\01\42\ac\02\fb\00\02\0b\64\00\00"
  "\41\90\03\fb\00\00\0b\64\00\00\23\08\0b\07\f5\81"
  "\80\80\00\15\06\73\31\5f\67\65\74\00\00\06\73\31"
  "\5f\73\65\74\00\01\06\6e\65\77\5f\73\31\00\02\08"
  "\61\6c\69\61\73\5f\73\31\00\03\0c\61\6c\6c\5f\61"
  "\6c\69\61\73\5f\73\31\00\04\06\73\32\5f\67\65\74"
  "\00\05\0d\73\74\72\75\63\74\72\65\66\5f\67\65\74"
  "\00\06\0a\61\6e\79\72\65\66\5f\67\65\74\00\07\06"
  "\61\31\5f\6c\65\6e\00\08\06\61\31\5f\67\65\74\00"
  "\09\06\61\31\5f\73\65\74\00\0a\10\61\72\72\61\79"
  "\72\65\66\5f\66\72\6f\6d\5f\61\31\00\0b\0c\61\72"
  "\72\61\79\72\65\66\5f\6c\65\6e\00\0c\0e\61\72\72"
  "\61\79\72\65\66\5f\69\73\5f\61\31\00\0d\06\6e\65"
  "\77\5f\61\31\00\0e\05\74\5f\67\65\74\00\0f\06\74"
  "\5f\69\73\5f\75\00\10\09\74\5f\75\5f\66\69\65\6c"
  "\64\00\11\07\74\5f\73\65\74\5f\74\00\12\0e\69\6d"
  "\6d\5f\61\6c\69\61\73\5f\73\61\6d\65\00\13\07\69"
  "\6d\6d\5f\67\65\74\00\14\0a\bc\82\80\80\00\15\88"
  "\80\80\80\00\00\23\04\fb\02\00\00\0b\8a\80\80\80"
  "\00\00\23\04\20\00\fb\05\00\00\0b\89\80\80\80\00"
  "\00\20\00\fb\00\00\24\04\0b\92\80\80\80\00\00\23"
  "\04\24\05\23\04\24\00\23\04\24\02\23\04\24\03\0b"
  "\9c\80\80\80\00\00\23\04\23\05\d3\23\04\23\00\d3"
  "\71\23\04\23\02\d3\23\04\23\03\fb\17\6d\d3\71\71"
  "\0b\88\80\80\80\00\00\23\05\fb\02\00\00\0b\8b\80"
  "\80\80\00\00\23\00\fb\16\00\fb\02\00\00\0b\8b\80"
  "\80\80\00\00\23\03\fb\16\00\fb\02\00\00\0b\86\80"
  "\80\80\00\00\23\06\fb\0f\0b\89\80\80\80\00\00\23"
  "\06\20\00\fb\0b\03\0b\8b\80\80\80\00\00\23\06\20"
  "\00\20\01\fb\0e\03\0b\86\80\80\80\00\00\23\06\24"
  "\01\0b\87\80\80\80\00\00\23\01\d4\fb\0f\0b\87\80"
  "\80\80\00\00\23\01\23\06\d3\0b\8b\80\80\80\00\00"
  "\20\00\41\09\fb\06\03\24\06\0b\88\80\80\80\00\00"
  "\23\07\fb\02\01\00\0b\87\80\80\80\00\00\23\07\fb"
  "\14\02\0b\8b\80\80\80\00\00\23\07\fb\16\02\fb\02"
  "\02\01\0b\89\80\80\80\00\00\20\00\fb\00\01\24\07"
  "\0b\87\80\80\80\00\00\23\08\23\09\d3\0b\88\80\80"
  "\80\00\00\23\09\fb\02\00\00\0b"
)
(module instance)
(assert_return (invoke "s1_get") (i32.const 0x64))
(invoke "alias_s1")
(assert_return (invoke "all_alias_s1") (i32.const 0x1))
(invoke "s1_set" (i32.const 0x65))
(assert_return (invoke "s2_get") (i32.const 0x65))
(assert_return (invoke "structref_get") (i32.const 0x65))
(assert_return (invoke "anyref_get") (i32.const 0x65))
(invoke "new_s1" (i32.const 0x66))
(assert_return (invoke "all_alias_s1") (i32.const 0x0))
(assert_return (invoke "s1_get") (i32.const 0x66))
(assert_return (invoke "s2_get") (i32.const 0x65))
(invoke "alias_s1")
(assert_return (invoke "all_alias_s1") (i32.const 0x1))
(assert_return (invoke "anyref_get") (i32.const 0x66))
(assert_return (invoke "a1_len") (i32.const 0x5))
(assert_return (invoke "a1_get" (i32.const 0x4)) (i32.const 0x3))
(invoke "a1_set" (i32.const 0x2) (i32.const 0x4d))
(invoke "arrayref_from_a1")
(assert_return (invoke "arrayref_is_a1") (i32.const 0x1))
(assert_return (invoke "arrayref_len") (i32.const 0x5))
(invoke "new_a1" (i32.const 0x8))
(assert_return (invoke "arrayref_is_a1") (i32.const 0x0))
(assert_return (invoke "a1_len") (i32.const 0x9))
(assert_return (invoke "a1_get" (i32.const 0x8)) (i32.const 0x8))
(assert_return (invoke "arrayref_len") (i32.const 0x5))
(assert_return (invoke "t_get") (i32.const 0xc8))
(assert_return (invoke "t_is_u") (i32.const 0x1))
(assert_return (invoke "t_u_field") (i64.const 0x12c))
(invoke "t_set_t" (i32.const 0xc9))
(assert_return (invoke "t_is_u") (i32.const 0x0))
(assert_return (invoke "t_get") (i32.const 0xc9))
(assert_return (invoke "imm_alias_same") (i32.const 0x1))
(assert_return (invoke "imm_get") (i32.const 0x190))
