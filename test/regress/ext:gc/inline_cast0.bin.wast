(module definition $M binary
  "\00\61\73\6d\01\00\00\00\01\c4\80\80\80\00\0b\50"
  "\00\5f\01\7f\00\50\01\00\5f\02\7f\00\7e\00\50\01"
  "\01\5f\03\7f\00\7e\00\7d\00\4f\01\00\5f\02\7f\00"
  "\7c\00\5f\01\7f\00\5e\78\00\60\00\00\60\01\7f\01"
  "\6e\60\01\7f\01\7f\60\01\7f\02\7f\7f\60\00\02\7f"
  "\64\6d\03\8e\80\80\80\00\0d\06\07\08\08\08\08\08"
  "\08\08\08\08\08\09\04\84\80\80\80\00\01\6e\00\09"
  "\07\95\81\80\80\00\0d\04\69\6e\69\74\00\00\03\67"
  "\65\74\00\01\04\74\65\73\74\00\02\09\74\65\73\74"
  "\5f\6e\75\6c\6c\00\03\06\63\61\73\74\5f\42\00\04"
  "\0b\63\61\73\74\5f\6e\75\6c\6c\5f\42\00\05\06\63"
  "\61\73\74\5f\46\00\06\0b\63\61\73\74\5f\73\74\72"
  "\75\63\74\00\07\07\62\72\5f\6f\6e\5f\42\00\08\0c"
  "\62\72\5f\6f\6e\5f\6e\75\6c\6c\5f\42\00\09\0c\62"
  "\72\5f\6f\6e\5f\66\61\69\6c\5f\42\00\0a\0e\62\72"
  "\5f\6f\6e\5f\43\5f\66\72\6f\6d\5f\41\00\0b\0a\62"
  "\72\5f\6f\6e\5f\6c\69\76\65\00\0c\0a\e2\83\80\80"
  "\00\0d\c7\80\80\80\00\00\41\00\d0\6e\26\00\41\01"
  "\41\07\fb\1c\26\00\41\02\fb\01\00\26\00\41\03\fb"
  "\01\01\26\00\41\04\fb\01\02\26\00\41\05\fb\01\03"
  "\26\00\41\06\fb\01\04\26\00\41\07\41\01\fb\07\05"
  "\26\00\41\08\fb\01\02\fb\1b\fb\1a\26\00\0b\86\80"
  "\80\80\00\00\20\00\25\00\0b\f2\80\80\80\00\01\01"
  "\6e\20\00\25\00\21\01\20\01\fb\14\00\20\01\fb\14"
  "\01\41\01\74\72\20\01\fb\14\02\41\02\74\72\20\01"
  "\fb\14\03\41\03\74\72\20\01\fb\14\04\41\04\74\72"
  "\20\01\fb\14\05\41\05\74\72\20\01\fb\14\6b\41\06"
  "\74\72\20\01\fb\14\6a\41\07\74\72\20\01\fb\14\6d"
  "\41\08\74\72\20\01\fb\14\6c\41\09\74\72\20\01\fb"
  "\14\6e\41\0a\74\72\20\01\fb\14\71\41\0b\74\72\0b"
  "\aa\80\80\80\00\01\01\6e\20\00\25\00\21\01\20\01"
  "\fb\15\01\20\01\fb\15\03\41\01\74\72\20\01\fb\15"
  "\6d\41\02\74\72\20\01\fb\15\71\41\03\74\72\0b\8a"
  "\80\80\80\00\00\20\00\25\00\fb\16\01\d1\0b\8a\80"
  "\80\80\00\00\20\00\25\00\fb\17\01\d1\0b\8a\80\80"
  "\80\00\00\20\00\25\00\fb\16\03\d1\0b\8a\80\80\80"
  "\00\00\20\00\25\00\fb\16\6b\d1\0b\97\80\80\80\00"
  "\00\02\64\01\20\00\25\00\fb\18\01\00\6e\01\1a\41"
  "\00\0f\0b\1a\41\01\0b\97\80\80\80\00\00\02\63\01"
  "\20\00\25\00\fb\18\03\00\6e\01\1a\41\00\0f\0b\1a"
  "\41\01\0b\9a\80\80\80\00\00\02\6e\20\00\25\00\fb"
  "\19\01\00\6e\01\fb\02\01\00\41\0a\6a\0f\0b\1a\41"
  "\01\0b\a1\80\80\80\00\01\01\64\00\20\00\25\00\fb"
  "\16\00\21\01\02\64\02\20\01\fb\18\00\00\00\02\1a"
  "\41\00\0f\0b\1a\41\01\0b\a6\80\80\80\00\01\01\7f"
  "\20\00\41\03\6c\21\01\02\0a\20\01\41\01\6a\20\00"
  "\25\00\fb\18\01\00\6e\6d\1a\20\01\41\00\0f\0b\1a"
  "\20\01\0b"
)
(module instance $M $M)
(register "M" $M)
(invoke "init")
(assert_return (invoke "test" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "test" (i32.const 0x1)) (i32.const 0x700))
(assert_return (invoke "test" (i32.const 0x2)) (i32.const 0x541))
(assert_return (invoke "test" (i32.const 0x3)) (i32.const 0x543))
(assert_return (invoke "test" (i32.const 0x4)) (i32.const 0x547))
(assert_return (invoke "test" (i32.const 0x5)) (i32.const 0x549))
(assert_return (invoke "test" (i32.const 0x6)) (i32.const 0x550))
(assert_return (invoke "test" (i32.const 0x7)) (i32.const 0x5a0))
(assert_return (invoke "test" (i32.const 0x8)) (i32.const 0x547))
(assert_return (invoke "test_null" (i32.const 0x0)) (i32.const 0xf))
(assert_return (invoke "test_null" (i32.const 0x1)) (i32.const 0x4))
(assert_return (invoke "test_null" (i32.const 0x2)) (i32.const 0x4))
(assert_return (invoke "test_null" (i32.const 0x4)) (i32.const 0x5))
(assert_return (invoke "test_null" (i32.const 0x5)) (i32.const 0x6))
(assert_return (invoke "test_null" (i32.const 0x7)) (i32.const 0x4))
(assert_trap (invoke "cast_B" (i32.const 0x0)) "cast")
(assert_trap (invoke "cast_B" (i32.const 0x1)) "cast")
(assert_trap (invoke "cast_B" (i32.const 0x2)) "cast")
(assert_return (invoke "cast_B" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "cast_B" (i32.const 0x4)) (i32.const 0x0))
(assert_trap (invoke "cast_B" (i32.const 0x5)) "cast")
(assert_trap (invoke "cast_B" (i32.const 0x7)) "cast")
(assert_return (invoke "cast_null_B" (i32.const 0x0)) (i32.const 0x1))
(assert_trap (invoke "cast_null_B" (i32.const 0x6)) "cast")
(assert_return (invoke "cast_F" (i32.const 0x5)) (i32.const 0x0))
(assert_trap (invoke "cast_F" (i32.const 0x2)) "cast")
(assert_trap (invoke "cast_F" (i32.const 0x4)) "cast")
(assert_return (invoke "cast_struct" (i32.const 0x6)) (i32.const 0x0))
(assert_trap (invoke "cast_struct" (i32.const 0x1)) "cast")
(assert_trap (invoke "cast_struct" (i32.const 0x7)) "cast")
(assert_return (invoke "br_on_B" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "br_on_B" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "br_on_B" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "br_on_B" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "br_on_B" (i32.const 0x4)) (i32.const 0x1))
(assert_return (invoke "br_on_B" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "br_on_null_B" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "br_on_null_B" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "br_on_fail_B" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "br_on_fail_B" (i32.const 0x3)) (i32.const 0xa))
(assert_return (invoke "br_on_fail_B" (i32.const 0x4)) (i32.const 0xa))
(assert_return (invoke "br_on_fail_B" (i32.const 0x5)) (i32.const 0x1))
(assert_return (invoke "br_on_C_from_A" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "br_on_C_from_A" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "br_on_C_from_A" (i32.const 0x4)) (i32.const 0x1))
(assert_return (invoke "br_on_C_from_A" (i32.const 0x5)) (i32.const 0x0))
(assert_return
  (invoke "br_on_live" (i32.const 0x1))
  (i32.const 0x4)
  (i32.const 0x3)
)
(assert_return
  (invoke "br_on_live" (i32.const 0x0))
  (i32.const 0x0)
  (i32.const 0x0)
)
(assert_return
  (invoke "br_on_live" (i32.const 0x7))
  (i32.const 0x16)
  (i32.const 0x15)
)
(module definition binary
  "\00\61\73\6d\01\00\00\00\01\ae\80\80\80\00\06\50"
  "\00\5f\01\7f\00\50\01\00\5f\02\7f\00\7e\00\50\01"
  "\01\5f\03\7f\00\7e\00\7d\00\4f\01\00\5f\02\7f\00"
  "\7c\00\60\01\7f\01\6e\60\01\7f\01\7f\02\89\80\80"
  "\80\00\01\01\4d\03\67\65\74\00\04\03\82\80\80\80"
  "\00\01\05\07\89\80\80\80\00\01\05\74\65\73\74\32"
  "\00\01\0a\b0\80\80\80\00\01\aa\80\80\80\00\01\01"
  "\6e\20\00\10\00\21\01\20\01\fb\14\00\20\01\fb\14"
  "\01\41\01\74\72\20\01\fb\14\02\41\02\74\72\20\01"
  "\fb\14\03\41\03\74\72\0b"
)
(module instance)
(assert_return (invoke "test2" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "test2" (i32.const 0x3)) (i32.const 0x3))
(assert_return (invoke "test2" (i32.const 0x4)) (i32.const 0x7))
(assert_return (invoke "test2" (i32.const 0x5)) (i32.const 0x9))
(assert_return (invoke "test2" (i32.const 0x6)) (i32.const 0x0))
