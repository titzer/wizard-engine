(module binary
  "\00\61\73\6d\01\00\00\00\01\87\80\80\80\00\01\60"
  "\02\7d\7d\01\7f\03\82\80\80\80\00\01\00\05\83\80"
  "\80\80\00\01\00\01\07\85\80\80\80\00\01\01\66\00"
  "\00\0a\df\80\80\80\00\01\d9\80\80\80\00\01\01\7f"
  "\20\00\bc\20\00\bc\20\00\bc\20\00\bc\20\00\bc\20"
  "\00\bc\20\00\bc\20\00\bc\20\00\bc\20\00\bc\20\00"
  "\bc\20\00\bc\20\00\bc\20\00\bc\20\00\bc\20\00\bc"
  "\20\00\bc\20\00\bc\20\00\bc\20\00\20\01\5f\21\02"
  "\6a\6a\6a\6a\6a\6a\6a\6a\6a\6a\6a\6a\6a\6a\6a\6a"
  "\6a\6a\20\02\6a\0b\0b\a0\80\80\80\00\01\00\41\00"
  "\0b\1a\61\62\63\64\65\66\67\68\69\6a\6b\6c\6d\6e"
  "\6f\70\71\72\73\74\75\76\77\78\79\7a"
)
(assert_return
  (invoke "f" (f32.const 0x1.1999_9ap+0) (f32.const 0x1.1999_9ap+1))
  (i32.const 0xb773_3338)
)
(assert_return
  (invoke "f" (f32.const 0x1.8ccc_ccp+1) (f32.const 0x1.1999_9ap+1))
  (i32.const 0xc539_9992)
)
(assert_return
  (invoke "f" (f32.const 0x1.8ccc_ccp+1) (f32.const nan:0x40_0000))
  (i32.const 0xc539_9992)
)
