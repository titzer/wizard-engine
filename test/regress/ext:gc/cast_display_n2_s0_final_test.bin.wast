(module definition binary
  "\00\61\73\6d\01\00\00\00\01\ba\80\80\80\00\09\50"
  "\00\5f\01\7f\00\4f\01\00\5f\02\7f\00\7e\00\50\00"
  "\5f\01\7f\00\4f\01\02\5f\02\7f\00\7e\00\50\00\5f"
  "\01\7b\00\50\01\04\5f\02\7b\00\7b\00\5e\78\00\60"
  "\01\6f\00\60\01\7f\01\7f\03\9a\80\80\80\00\19\07"
  "\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08\08"
  "\08\08\08\08\08\08\08\08\04\84\80\80\80\00\01\6e"
  "\00\08\07\d2\81\80\80\00\19\04\69\6e\69\74\00\00"
  "\02\74\30\00\01\02\75\30\00\02\02\74\31\00\03\02"
  "\75\31\00\04\02\78\30\00\05\02\78\31\00\06\03\61"
  "\6e\79\00\07\02\65\71\00\08\03\69\33\31\00\09\06"
  "\73\74\72\75\63\74\00\0a\05\61\72\72\61\79\00\0b"
  "\04\6e\6f\6e\65\00\0c\07\6e\75\6c\6c\5f\74\30\00"
  "\0d\07\6e\75\6c\6c\5f\75\30\00\0e\07\6e\75\6c\6c"
  "\5f\74\31\00\0f\07\6e\75\6c\6c\5f\75\31\00\10\07"
  "\6e\75\6c\6c\5f\78\30\00\11\07\6e\75\6c\6c\5f\78"
  "\31\00\12\08\6e\75\6c\6c\5f\61\6e\79\00\13\07\6e"
  "\75\6c\6c\5f\65\71\00\14\08\6e\75\6c\6c\5f\69\33"
  "\31\00\15\0b\6e\75\6c\6c\5f\73\74\72\75\63\74\00"
  "\16\0a\6e\75\6c\6c\5f\61\72\72\61\79\00\17\09\6e"
  "\75\6c\6c\5f\6e\6f\6e\65\00\18\0a\93\83\80\80\00"
  "\19\bd\80\80\80\00\00\41\00\fb\01\00\26\00\41\01"
  "\fb\01\01\26\00\41\02\fb\01\04\26\00\41\03\fb\01"
  "\05\26\00\41\04\41\07\fb\1c\26\00\41\05\41\01\fb"
  "\07\06\26\00\41\06\d0\71\26\00\41\07\20\00\fb\1a"
  "\26\00\0b\89\80\80\80\00\00\20\00\25\00\fb\14\00"
  "\0b\89\80\80\80\00\00\20\00\25\00\fb\14\02\0b\89"
  "\80\80\80\00\00\20\00\25\00\fb\14\01\0b\89\80\80"
  "\80\00\00\20\00\25\00\fb\14\03\0b\89\80\80\80\00"
  "\00\20\00\25\00\fb\14\04\0b\89\80\80\80\00\00\20"
  "\00\25\00\fb\14\05\0b\89\80\80\80\00\00\20\00\25"
  "\00\fb\14\6e\0b\89\80\80\80\00\00\20\00\25\00\fb"
  "\14\6d\0b\89\80\80\80\00\00\20\00\25\00\fb\14\6c"
  "\0b\89\80\80\80\00\00\20\00\25\00\fb\14\6b\0b\89"
  "\80\80\80\00\00\20\00\25\00\fb\14\6a\0b\89\80\80"
  "\80\00\00\20\00\25\00\fb\14\71\0b\89\80\80\80\00"
  "\00\20\00\25\00\fb\15\00\0b\89\80\80\80\00\00\20"
  "\00\25\00\fb\15\02\0b\89\80\80\80\00\00\20\00\25"
  "\00\fb\15\01\0b\89\80\80\80\00\00\20\00\25\00\fb"
  "\15\03\0b\89\80\80\80\00\00\20\00\25\00\fb\15\04"
  "\0b\89\80\80\80\00\00\20\00\25\00\fb\15\05\0b\89"
  "\80\80\80\00\00\20\00\25\00\fb\15\6e\0b\89\80\80"
  "\80\00\00\20\00\25\00\fb\15\6d\0b\89\80\80\80\00"
  "\00\20\00\25\00\fb\15\6c\0b\89\80\80\80\00\00\20"
  "\00\25\00\fb\15\6b\0b\89\80\80\80\00\00\20\00\25"
  "\00\fb\15\6a\0b\89\80\80\80\00\00\20\00\25\00\fb"
  "\15\71\0b"
)
(module instance)
(invoke "init" (ref.extern 1))
(assert_return (invoke "t0" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "t0" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "t0" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "t0" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "t0" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "t0" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "t0" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "t0" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "u0" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "u0" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "u0" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "u0" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "u0" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "u0" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "u0" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "u0" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "t1" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "t1" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "t1" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "t1" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "t1" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "t1" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "t1" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "t1" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "u1" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "u1" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "u1" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "u1" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "u1" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "u1" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "u1" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "u1" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "x0" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "x0" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "x0" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "x0" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "x0" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "x0" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "x0" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "x0" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "x1" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "x1" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "x1" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "x1" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "x1" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "x1" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "x1" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "x1" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "any" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "any" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "any" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "any" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "any" (i32.const 0x4)) (i32.const 0x1))
(assert_return (invoke "any" (i32.const 0x5)) (i32.const 0x1))
(assert_return (invoke "any" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "any" (i32.const 0x7)) (i32.const 0x1))
(assert_return (invoke "eq" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "eq" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "eq" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "eq" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "eq" (i32.const 0x4)) (i32.const 0x1))
(assert_return (invoke "eq" (i32.const 0x5)) (i32.const 0x1))
(assert_return (invoke "eq" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "eq" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "i31" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "i31" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "i31" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "i31" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "i31" (i32.const 0x4)) (i32.const 0x1))
(assert_return (invoke "i31" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "i31" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "i31" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "struct" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "struct" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "struct" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "struct" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "struct" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "struct" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "struct" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "struct" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "array" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "array" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "array" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "array" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "array" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "array" (i32.const 0x5)) (i32.const 0x1))
(assert_return (invoke "array" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "array" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "none" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "none" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "none" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "none" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "none" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "none" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "none" (i32.const 0x6)) (i32.const 0x0))
(assert_return (invoke "none" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_t0" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "null_t0" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "null_t0" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "null_t0" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null_t0" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_t0" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_t0" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_t0" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_u0" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "null_u0" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "null_u0" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "null_u0" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null_u0" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_u0" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_u0" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_u0" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_t1" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "null_t1" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "null_t1" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "null_t1" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null_t1" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_t1" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_t1" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_t1" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_u1" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "null_u1" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "null_u1" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "null_u1" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null_u1" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_u1" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_u1" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_u1" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_x0" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "null_x0" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "null_x0" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "null_x0" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "null_x0" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_x0" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_x0" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_x0" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_x1" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "null_x1" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "null_x1" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "null_x1" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "null_x1" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_x1" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_x1" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_x1" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_any" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "null_any" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "null_any" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "null_any" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "null_any" (i32.const 0x4)) (i32.const 0x1))
(assert_return (invoke "null_any" (i32.const 0x5)) (i32.const 0x1))
(assert_return (invoke "null_any" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_any" (i32.const 0x7)) (i32.const 0x1))
(assert_return (invoke "null_eq" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "null_eq" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "null_eq" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "null_eq" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "null_eq" (i32.const 0x4)) (i32.const 0x1))
(assert_return (invoke "null_eq" (i32.const 0x5)) (i32.const 0x1))
(assert_return (invoke "null_eq" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_eq" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_i31" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "null_i31" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "null_i31" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "null_i31" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null_i31" (i32.const 0x4)) (i32.const 0x1))
(assert_return (invoke "null_i31" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_i31" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_i31" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_struct" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "null_struct" (i32.const 0x1)) (i32.const 0x1))
(assert_return (invoke "null_struct" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "null_struct" (i32.const 0x3)) (i32.const 0x1))
(assert_return (invoke "null_struct" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_struct" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_struct" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_struct" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_array" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "null_array" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "null_array" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "null_array" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null_array" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_array" (i32.const 0x5)) (i32.const 0x1))
(assert_return (invoke "null_array" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_array" (i32.const 0x7)) (i32.const 0x0))
(assert_return (invoke "null_none" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "null_none" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "null_none" (i32.const 0x2)) (i32.const 0x0))
(assert_return (invoke "null_none" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null_none" (i32.const 0x4)) (i32.const 0x0))
(assert_return (invoke "null_none" (i32.const 0x5)) (i32.const 0x0))
(assert_return (invoke "null_none" (i32.const 0x6)) (i32.const 0x1))
(assert_return (invoke "null_none" (i32.const 0x7)) (i32.const 0x0))
