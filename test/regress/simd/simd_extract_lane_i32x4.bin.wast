(module definition binary
  "\00\61\73\6d\01\00\00\00\01\86\80\80\80\00\01\60"
  "\01\7b\01\7f\03\85\80\80\80\00\04\00\00\00\00\07"
  "\a1\80\80\80\00\04\05\6c\61\6e\65\30\00\00\05\6c"
  "\61\6e\65\31\00\01\05\6c\61\6e\65\32\00\02\05\6c"
  "\61\6e\65\33\00\03\0a\b1\80\80\80\00\04\87\80\80"
  "\80\00\00\20\00\fd\1b\00\0b\87\80\80\80\00\00\20"
  "\00\fd\1b\01\0b\87\80\80\80\00\00\20\00\fd\1b\02"
  "\0b\87\80\80\80\00\00\20\00\fd\1b\03\0b"
)
(module instance)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8382_8180)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8786_8584)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8b8a_8988)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8f8e_8d8c)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i32.const 0x403_0201)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i32.const 0x807_0605)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i32.const 0xc0b_0a09)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0x403_0201 0x807_0605 0xc0b_0a09 0x100f_0e0d)
  )
  (i32.const 0x100f_0e0d)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane0" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane1" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane2" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane3" (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff))
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane0"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x1fe_807f)
)
(assert_return
  (invoke "lane1"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7eff_8100)
)
(assert_return
  (invoke "lane2"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x80_aa55)
)
(assert_return
  (invoke "lane3"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc37f_ff01)
)
(module definition binary
  "\00\61\73\6d\01\00\00\00\01\95\80\80\80\00\04\60"
  "\01\7f\01\7e\60\01\7b\01\7f\60\01\7b\01\7e\60\01"
  "\7f\01\7f\03\b3\80\80\80\00\32\00\01\01\01\01\01"
  "\01\02\02\01\02\02\01\01\01\01\01\01\01\02\02\01"
  "\02\02\01\01\01\01\01\01\01\02\02\01\02\02\01\01"
  "\01\01\01\01\01\02\02\01\02\02\01\03\05\83\80\80"
  "\80\00\01\00\01\06\86\80\80\80\00\01\7f\01\41\00"
  "\0b\07\8d\85\80\80\00\31\09\6c\61\6e\65\30\5f\72"
  "\65\74\00\01\0a\6c\61\6e\65\30\5f\73\68\72\38\00"
  "\02\0b\6c\61\6e\65\30\5f\73\68\72\31\36\00\03\0b"
  "\6c\61\6e\65\30\5f\73\68\72\32\34\00\04\09\6c\61"
  "\6e\65\30\5f\61\64\64\00\05\09\6c\61\6e\65\30\5f"
  "\65\71\7a\00\06\0c\6c\61\6e\65\30\5f\65\78\74\36"
  "\34\75\00\07\0c\6c\61\6e\65\30\5f\65\78\74\36\34"
  "\73\00\08\0b\6c\61\6e\65\30\5f\6c\6f\63\61\6c\00"
  "\09\0a\6c\61\6e\65\30\5f\63\61\6c\6c\00\0a\09\6c"
  "\61\6e\65\30\5f\6d\65\6d\00\0b\0c\6c\61\6e\65\30"
  "\5f\67\6c\6f\62\61\6c\00\0c\09\6c\61\6e\65\31\5f"
  "\72\65\74\00\0d\0a\6c\61\6e\65\31\5f\73\68\72\38"
  "\00\0e\0b\6c\61\6e\65\31\5f\73\68\72\31\36\00\0f"
  "\0b\6c\61\6e\65\31\5f\73\68\72\32\34\00\10\09\6c"
  "\61\6e\65\31\5f\61\64\64\00\11\09\6c\61\6e\65\31"
  "\5f\65\71\7a\00\12\0c\6c\61\6e\65\31\5f\65\78\74"
  "\36\34\75\00\13\0c\6c\61\6e\65\31\5f\65\78\74\36"
  "\34\73\00\14\0b\6c\61\6e\65\31\5f\6c\6f\63\61\6c"
  "\00\15\0a\6c\61\6e\65\31\5f\63\61\6c\6c\00\16\09"
  "\6c\61\6e\65\31\5f\6d\65\6d\00\17\0c\6c\61\6e\65"
  "\31\5f\67\6c\6f\62\61\6c\00\18\09\6c\61\6e\65\32"
  "\5f\72\65\74\00\19\0a\6c\61\6e\65\32\5f\73\68\72"
  "\38\00\1a\0b\6c\61\6e\65\32\5f\73\68\72\31\36\00"
  "\1b\0b\6c\61\6e\65\32\5f\73\68\72\32\34\00\1c\09"
  "\6c\61\6e\65\32\5f\61\64\64\00\1d\09\6c\61\6e\65"
  "\32\5f\65\71\7a\00\1e\0c\6c\61\6e\65\32\5f\65\78"
  "\74\36\34\75\00\1f\0c\6c\61\6e\65\32\5f\65\78\74"
  "\36\34\73\00\20\0b\6c\61\6e\65\32\5f\6c\6f\63\61"
  "\6c\00\21\0a\6c\61\6e\65\32\5f\63\61\6c\6c\00\22"
  "\09\6c\61\6e\65\32\5f\6d\65\6d\00\23\0c\6c\61\6e"
  "\65\32\5f\67\6c\6f\62\61\6c\00\24\09\6c\61\6e\65"
  "\33\5f\72\65\74\00\25\0a\6c\61\6e\65\33\5f\73\68"
  "\72\38\00\26\0b\6c\61\6e\65\33\5f\73\68\72\31\36"
  "\00\27\0b\6c\61\6e\65\33\5f\73\68\72\32\34\00\28"
  "\09\6c\61\6e\65\33\5f\61\64\64\00\29\09\6c\61\6e"
  "\65\33\5f\65\71\7a\00\2a\0c\6c\61\6e\65\33\5f\65"
  "\78\74\36\34\75\00\2b\0c\6c\61\6e\65\33\5f\65\78"
  "\74\36\34\73\00\2c\0b\6c\61\6e\65\33\5f\6c\6f\63"
  "\61\6c\00\2d\0a\6c\61\6e\65\33\5f\63\61\6c\6c\00"
  "\2e\09\6c\61\6e\65\33\5f\6d\65\6d\00\2f\0c\6c\61"
  "\6e\65\33\5f\67\6c\6f\62\61\6c\00\30\05\73\70\6c"
  "\61\74\00\31\0a\81\87\80\80\00\32\85\80\80\80\00"
  "\00\20\00\ad\0b\89\80\80\80\00\01\01\7f\20\00\fd"
  "\1b\00\0b\8c\80\80\80\00\01\01\7f\20\00\fd\1b\00"
  "\41\08\76\0b\8c\80\80\80\00\01\01\7f\20\00\fd\1b"
  "\00\41\10\76\0b\8c\80\80\80\00\01\01\7f\20\00\fd"
  "\1b\00\41\18\76\0b\8f\80\80\80\00\01\01\7f\20\00"
  "\fd\1b\00\41\80\80\80\08\6a\0b\8f\80\80\80\00\01"
  "\01\7f\20\00\fd\1b\00\41\80\80\7c\71\45\0b\8a\80"
  "\80\80\00\01\01\7f\20\00\fd\1b\00\ad\0b\8a\80\80"
  "\80\00\01\01\7f\20\00\fd\1b\00\ac\0b\8d\80\80\80"
  "\00\01\01\7f\20\00\fd\1b\00\21\01\20\01\0b\8b\80"
  "\80\80\00\01\01\7f\20\00\fd\1b\00\10\00\0b\9a\80"
  "\80\80\00\01\01\7f\41\08\42\7f\37\03\00\41\08\20"
  "\00\fd\1b\00\36\02\00\41\08\29\03\00\0b\8d\80\80"
  "\80\00\01\01\7f\20\00\fd\1b\00\24\00\23\00\0b\89"
  "\80\80\80\00\01\01\7f\20\00\fd\1b\01\0b\8c\80\80"
  "\80\00\01\01\7f\20\00\fd\1b\01\41\08\76\0b\8c\80"
  "\80\80\00\01\01\7f\20\00\fd\1b\01\41\10\76\0b\8c"
  "\80\80\80\00\01\01\7f\20\00\fd\1b\01\41\18\76\0b"
  "\8f\80\80\80\00\01\01\7f\20\00\fd\1b\01\41\80\80"
  "\80\08\6a\0b\8f\80\80\80\00\01\01\7f\20\00\fd\1b"
  "\01\41\80\80\7c\71\45\0b\8a\80\80\80\00\01\01\7f"
  "\20\00\fd\1b\01\ad\0b\8a\80\80\80\00\01\01\7f\20"
  "\00\fd\1b\01\ac\0b\8d\80\80\80\00\01\01\7f\20\00"
  "\fd\1b\01\21\01\20\01\0b\8b\80\80\80\00\01\01\7f"
  "\20\00\fd\1b\01\10\00\0b\9a\80\80\80\00\01\01\7f"
  "\41\08\42\7f\37\03\00\41\08\20\00\fd\1b\01\36\02"
  "\00\41\08\29\03\00\0b\8d\80\80\80\00\01\01\7f\20"
  "\00\fd\1b\01\24\00\23\00\0b\89\80\80\80\00\01\01"
  "\7f\20\00\fd\1b\02\0b\8c\80\80\80\00\01\01\7f\20"
  "\00\fd\1b\02\41\08\76\0b\8c\80\80\80\00\01\01\7f"
  "\20\00\fd\1b\02\41\10\76\0b\8c\80\80\80\00\01\01"
  "\7f\20\00\fd\1b\02\41\18\76\0b\8f\80\80\80\00\01"
  "\01\7f\20\00\fd\1b\02\41\80\80\80\08\6a\0b\8f\80"
  "\80\80\00\01\01\7f\20\00\fd\1b\02\41\80\80\7c\71"
  "\45\0b\8a\80\80\80\00\01\01\7f\20\00\fd\1b\02\ad"
  "\0b\8a\80\80\80\00\01\01\7f\20\00\fd\1b\02\ac\0b"
  "\8d\80\80\80\00\01\01\7f\20\00\fd\1b\02\21\01\20"
  "\01\0b\8b\80\80\80\00\01\01\7f\20\00\fd\1b\02\10"
  "\00\0b\9a\80\80\80\00\01\01\7f\41\08\42\7f\37\03"
  "\00\41\08\20\00\fd\1b\02\36\02\00\41\08\29\03\00"
  "\0b\8d\80\80\80\00\01\01\7f\20\00\fd\1b\02\24\00"
  "\23\00\0b\89\80\80\80\00\01\01\7f\20\00\fd\1b\03"
  "\0b\8c\80\80\80\00\01\01\7f\20\00\fd\1b\03\41\08"
  "\76\0b\8c\80\80\80\00\01\01\7f\20\00\fd\1b\03\41"
  "\10\76\0b\8c\80\80\80\00\01\01\7f\20\00\fd\1b\03"
  "\41\18\76\0b\8f\80\80\80\00\01\01\7f\20\00\fd\1b"
  "\03\41\80\80\80\08\6a\0b\8f\80\80\80\00\01\01\7f"
  "\20\00\fd\1b\03\41\80\80\7c\71\45\0b\8a\80\80\80"
  "\00\01\01\7f\20\00\fd\1b\03\ad\0b\8a\80\80\80\00"
  "\01\01\7f\20\00\fd\1b\03\ac\0b\8d\80\80\80\00\01"
  "\01\7f\20\00\fd\1b\03\21\01\20\01\0b\8b\80\80\80"
  "\00\01\01\7f\20\00\fd\1b\03\10\00\0b\9a\80\80\80"
  "\00\01\01\7f\41\08\42\7f\37\03\00\41\08\20\00\fd"
  "\1b\03\36\02\00\41\08\29\03\00\0b\8d\80\80\80\00"
  "\01\01\7f\20\00\fd\1b\03\24\00\23\00\0b\89\80\80"
  "\80\00\00\20\00\fd\11\fd\1b\03\0b"
)
(module instance)
(assert_return
  (invoke "lane0_ret"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8382_8180)
)
(assert_return
  (invoke "lane0_shr8"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x83_8281)
)
(assert_return
  (invoke "lane0_shr16"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8382)
)
(assert_return
  (invoke "lane0_shr24"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x83)
)
(assert_return
  (invoke "lane0_add"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8482_8180)
)
(assert_return
  (invoke "lane0_eqz"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane0_ext64u"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8382_8180)
)
(assert_return
  (invoke "lane0_ext64s"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0xffff_ffff_8382_8180)
)
(assert_return
  (invoke "lane0_local"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8382_8180)
)
(assert_return
  (invoke "lane0_call"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8382_8180)
)
(assert_return
  (invoke "lane0_mem"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0xffff_ffff_8382_8180)
)
(assert_return
  (invoke "lane0_global"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8382_8180)
)
(assert_return
  (invoke "lane1_ret"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8786_8584)
)
(assert_return
  (invoke "lane1_shr8"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x87_8685)
)
(assert_return
  (invoke "lane1_shr16"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8786)
)
(assert_return
  (invoke "lane1_shr24"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x87)
)
(assert_return
  (invoke "lane1_add"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8886_8584)
)
(assert_return
  (invoke "lane1_eqz"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane1_ext64u"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8786_8584)
)
(assert_return
  (invoke "lane1_ext64s"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0xffff_ffff_8786_8584)
)
(assert_return
  (invoke "lane1_local"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8786_8584)
)
(assert_return
  (invoke "lane1_call"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8786_8584)
)
(assert_return
  (invoke "lane1_mem"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0xffff_ffff_8786_8584)
)
(assert_return
  (invoke "lane1_global"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8786_8584)
)
(assert_return
  (invoke "lane2_ret"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8b8a_8988)
)
(assert_return
  (invoke "lane2_shr8"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8b_8a89)
)
(assert_return
  (invoke "lane2_shr16"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8b8a)
)
(assert_return
  (invoke "lane2_shr24"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8b)
)
(assert_return
  (invoke "lane2_add"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8c8a_8988)
)
(assert_return
  (invoke "lane2_eqz"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane2_ext64u"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8b8a_8988)
)
(assert_return
  (invoke "lane2_ext64s"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0xffff_ffff_8b8a_8988)
)
(assert_return
  (invoke "lane2_local"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8b8a_8988)
)
(assert_return
  (invoke "lane2_call"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8b8a_8988)
)
(assert_return
  (invoke "lane2_mem"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0xffff_ffff_8b8a_8988)
)
(assert_return
  (invoke "lane2_global"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8b8a_8988)
)
(assert_return
  (invoke "lane3_ret"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8f8e_8d8c)
)
(assert_return
  (invoke "lane3_shr8"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8f_8e8d)
)
(assert_return
  (invoke "lane3_shr16"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8f8e)
)
(assert_return
  (invoke "lane3_shr24"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8f)
)
(assert_return
  (invoke "lane3_add"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x908e_8d8c)
)
(assert_return
  (invoke "lane3_eqz"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane3_ext64u"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8f8e_8d8c)
)
(assert_return
  (invoke "lane3_ext64s"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0xffff_ffff_8f8e_8d8c)
)
(assert_return
  (invoke "lane3_local"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8f8e_8d8c)
)
(assert_return
  (invoke "lane3_call"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0x8f8e_8d8c)
)
(assert_return
  (invoke "lane3_mem"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i64.const 0xffff_ffff_8f8e_8d8c)
)
(assert_return
  (invoke "lane3_global"
    (v128.const i32x4 0x8382_8180 0x8786_8584 0x8b8a_8988 0x8f8e_8d8c)
  )
  (i32.const 0x8f8e_8d8c)
)
(assert_return
  (invoke "lane0_ret"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane0_shr8"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff_ffff)
)
(assert_return
  (invoke "lane0_shr16"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff)
)
(assert_return
  (invoke "lane0_shr24"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane0_add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff_ffff)
)
(assert_return
  (invoke "lane0_eqz"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane0_ext64u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff)
)
(assert_return
  (invoke "lane0_ext64s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane0_local"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane0_call"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff)
)
(assert_return
  (invoke "lane0_mem"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane0_global"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane1_ret"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane1_shr8"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff_ffff)
)
(assert_return
  (invoke "lane1_shr16"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff)
)
(assert_return
  (invoke "lane1_shr24"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane1_add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff_ffff)
)
(assert_return
  (invoke "lane1_eqz"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane1_ext64u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff)
)
(assert_return
  (invoke "lane1_ext64s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane1_local"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane1_call"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff)
)
(assert_return
  (invoke "lane1_mem"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane1_global"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane2_ret"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane2_shr8"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff_ffff)
)
(assert_return
  (invoke "lane2_shr16"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff)
)
(assert_return
  (invoke "lane2_shr24"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane2_add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff_ffff)
)
(assert_return
  (invoke "lane2_eqz"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane2_ext64u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff)
)
(assert_return
  (invoke "lane2_ext64s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane2_local"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane2_call"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff)
)
(assert_return
  (invoke "lane2_mem"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane2_global"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane3_ret"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane3_shr8"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff_ffff)
)
(assert_return
  (invoke "lane3_shr16"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff)
)
(assert_return
  (invoke "lane3_shr24"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane3_add"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xff_ffff)
)
(assert_return
  (invoke "lane3_eqz"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane3_ext64u"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff)
)
(assert_return
  (invoke "lane3_ext64s"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane3_local"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane3_call"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff)
)
(assert_return
  (invoke "lane3_mem"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i64.const 0xffff_ffff_ffff_ffff)
)
(assert_return
  (invoke "lane3_global"
    (v128.const i32x4 0xffff_ffff 0xffff_ffff 0xffff_ffff 0xffff_ffff)
  )
  (i32.const 0xffff_ffff)
)
(assert_return
  (invoke "lane0_ret"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane0_shr8"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane0_shr16"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane0_shr24"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane0_add"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane0_eqz"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane0_ext64u"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00)
)
(assert_return
  (invoke "lane0_ext64s"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xffff_ffff_ff00_ff00)
)
(assert_return
  (invoke "lane0_local"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane0_call"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00)
)
(assert_return
  (invoke "lane0_mem"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xffff_ffff_ff00_ff00)
)
(assert_return
  (invoke "lane0_global"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane1_ret"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane1_shr8"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane1_shr16"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane1_shr24"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane1_add"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane1_eqz"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane1_ext64u"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00)
)
(assert_return
  (invoke "lane1_ext64s"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xffff_ffff_ff00_ff00)
)
(assert_return
  (invoke "lane1_local"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane1_call"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00)
)
(assert_return
  (invoke "lane1_mem"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xffff_ffff_ff00_ff00)
)
(assert_return
  (invoke "lane1_global"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane2_ret"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane2_shr8"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane2_shr16"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane2_shr24"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane2_add"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane2_eqz"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane2_ext64u"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00)
)
(assert_return
  (invoke "lane2_ext64s"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xffff_ffff_ff00_ff00)
)
(assert_return
  (invoke "lane2_local"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane2_call"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00)
)
(assert_return
  (invoke "lane2_mem"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xffff_ffff_ff00_ff00)
)
(assert_return
  (invoke "lane2_global"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane3_ret"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane3_shr8"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane3_shr16"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane3_shr24"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane3_add"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane3_eqz"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane3_ext64u"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00)
)
(assert_return
  (invoke "lane3_ext64s"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xffff_ffff_ff00_ff00)
)
(assert_return
  (invoke "lane3_local"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane3_call"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xff00_ff00)
)
(assert_return
  (invoke "lane3_mem"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i64.const 0xffff_ffff_ff00_ff00)
)
(assert_return
  (invoke "lane3_global"
    (v128.const i32x4 0xff00_ff00 0xff00_ff00 0xff00_ff00 0xff00_ff00)
  )
  (i32.const 0xff00_ff00)
)
(assert_return
  (invoke "lane0_ret"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane0_shr8"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane0_shr16"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane0_shr24"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane0_add"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x1ff_00ff)
)
(assert_return
  (invoke "lane0_eqz"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane0_ext64u"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane0_ext64s"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane0_local"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane0_call"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane0_mem"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xffff_ffff_00ff_00ff)
)
(assert_return
  (invoke "lane0_global"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane1_ret"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane1_shr8"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane1_shr16"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane1_shr24"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane1_add"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x1ff_00ff)
)
(assert_return
  (invoke "lane1_eqz"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane1_ext64u"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane1_ext64s"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane1_local"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane1_call"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane1_mem"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xffff_ffff_00ff_00ff)
)
(assert_return
  (invoke "lane1_global"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane2_ret"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane2_shr8"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane2_shr16"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane2_shr24"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane2_add"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x1ff_00ff)
)
(assert_return
  (invoke "lane2_eqz"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane2_ext64u"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane2_ext64s"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane2_local"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane2_call"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane2_mem"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xffff_ffff_00ff_00ff)
)
(assert_return
  (invoke "lane2_global"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane3_ret"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane3_shr8"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff00)
)
(assert_return
  (invoke "lane3_shr16"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff)
)
(assert_return
  (invoke "lane3_shr24"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane3_add"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x1ff_00ff)
)
(assert_return
  (invoke "lane3_eqz"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane3_ext64u"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane3_ext64s"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane3_local"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane3_call"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xff_00ff)
)
(assert_return
  (invoke "lane3_mem"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i64.const 0xffff_ffff_00ff_00ff)
)
(assert_return
  (invoke "lane3_global"
    (v128.const i32x4 0xff_00ff 0xff_00ff 0xff_00ff 0xff_00ff)
  )
  (i32.const 0xff_00ff)
)
(assert_return
  (invoke "lane0_ret"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x1fe_807f)
)
(assert_return
  (invoke "lane0_shr8"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x1_fe80)
)
(assert_return
  (invoke "lane0_shr16"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x1fe)
)
(assert_return
  (invoke "lane0_shr24"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x1)
)
(assert_return
  (invoke "lane0_add"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x2fe_807f)
)
(assert_return
  (invoke "lane0_eqz"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane0_ext64u"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x1fe_807f)
)
(assert_return
  (invoke "lane0_ext64s"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x1fe_807f)
)
(assert_return
  (invoke "lane0_local"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x1fe_807f)
)
(assert_return
  (invoke "lane0_call"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x1fe_807f)
)
(assert_return
  (invoke "lane0_mem"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0xffff_ffff_01fe_807f)
)
(assert_return
  (invoke "lane0_global"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x1fe_807f)
)
(assert_return
  (invoke "lane1_ret"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7eff_8100)
)
(assert_return
  (invoke "lane1_shr8"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7e_ff81)
)
(assert_return
  (invoke "lane1_shr16"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7eff)
)
(assert_return
  (invoke "lane1_shr24"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7e)
)
(assert_return
  (invoke "lane1_add"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7fff_8100)
)
(assert_return
  (invoke "lane1_eqz"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane1_ext64u"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x7eff_8100)
)
(assert_return
  (invoke "lane1_ext64s"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x7eff_8100)
)
(assert_return
  (invoke "lane1_local"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7eff_8100)
)
(assert_return
  (invoke "lane1_call"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x7eff_8100)
)
(assert_return
  (invoke "lane1_mem"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0xffff_ffff_7eff_8100)
)
(assert_return
  (invoke "lane1_global"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x7eff_8100)
)
(assert_return
  (invoke "lane2_ret"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x80_aa55)
)
(assert_return
  (invoke "lane2_shr8"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x80aa)
)
(assert_return
  (invoke "lane2_shr16"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x80)
)
(assert_return
  (invoke "lane2_shr24"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane2_add"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x180_aa55)
)
(assert_return
  (invoke "lane2_eqz"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane2_ext64u"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x80_aa55)
)
(assert_return
  (invoke "lane2_ext64s"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x80_aa55)
)
(assert_return
  (invoke "lane2_local"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x80_aa55)
)
(assert_return
  (invoke "lane2_call"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0x80_aa55)
)
(assert_return
  (invoke "lane2_mem"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0xffff_ffff_0080_aa55)
)
(assert_return
  (invoke "lane2_global"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x80_aa55)
)
(assert_return
  (invoke "lane3_ret"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc37f_ff01)
)
(assert_return
  (invoke "lane3_shr8"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc3_7fff)
)
(assert_return
  (invoke "lane3_shr16"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc37f)
)
(assert_return
  (invoke "lane3_shr24"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc3)
)
(assert_return
  (invoke "lane3_add"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc47f_ff01)
)
(assert_return
  (invoke "lane3_eqz"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0x0)
)
(assert_return
  (invoke "lane3_ext64u"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0xc37f_ff01)
)
(assert_return
  (invoke "lane3_ext64s"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0xffff_ffff_c37f_ff01)
)
(assert_return
  (invoke "lane3_local"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc37f_ff01)
)
(assert_return
  (invoke "lane3_call"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0xc37f_ff01)
)
(assert_return
  (invoke "lane3_mem"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i64.const 0xffff_ffff_c37f_ff01)
)
(assert_return
  (invoke "lane3_global"
    (v128.const i32x4 0x1fe_807f 0x7eff_8100 0x80_aa55 0xc37f_ff01)
  )
  (i32.const 0xc37f_ff01)
)
(assert_return (invoke "splat" (i32.const 0xffff_ffff)) (i32.const 0xffff_ffff))
(assert_return (invoke "splat" (i32.const 0x1ff)) (i32.const 0x1ff))
(assert_return (invoke "splat" (i32.const 0x1_8001)) (i32.const 0x1_8001))
(assert_return (invoke "splat" (i32.const 0x7f7f_7f80)) (i32.const 0x7f7f_7f80))
(assert_return (invoke "splat" (i32.const 0x8080_8080)) (i32.const 0x8080_8080))
(assert_return (invoke "splat" (i32.const 0x1234_5678)) (i32.const 0x1234_5678))
(assert_return (invoke "splat" (i32.const 0xfffe_0000)) (i32.const 0xfffe_0000))
(assert_return (invoke "splat" (i32.const 0xff00)) (i32.const 0xff00))
