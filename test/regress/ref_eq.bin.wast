(module binary
  "\00\61\73\6d\01\00\00\00\01\ab\80\80\80\00\09\5f"
  "\00\5f\01\7f\00\5e\7a\00\50\01\00\5f\00\50\01\00"
  "\5f\00\50\01\01\5f\01\7f\00\50\01\01\5f\01\7f\00"
  "\60\00\00\60\02\7f\7f\01\7f\03\83\80\80\80\00\02"
  "\07\08\04\84\80\80\80\00\01\6d\00\14\07\8d\80\80"
  "\80\00\02\04\69\6e\69\74\00\00\02\65\71\00\01\0a"
  "\99\81\80\80\00\02\83\81\80\80\00\00\41\00\d0\6d"
  "\26\00\41\01\d0\6a\26\00\41\02\41\07\fb\20\26\00"
  "\41\03\41\07\fb\20\26\00\41\04\41\08\fb\20\26\00"
  "\41\05\fb\30\00\fb\02\00\26\00\41\06\fb\30\00\fb"
  "\02\00\26\00\41\07\41\00\fb\30\02\fb\12\02\26\00"
  "\41\08\41\00\fb\30\02\fb\12\02\26\00\41\09\fb\30"
  "\00\26\00\41\0a\fb\30\00\26\00\41\0b\fb\30\02\26"
  "\00\41\0c\fb\30\03\26\00\41\0d\fb\30\04\26\00\41"
  "\0e\fb\30\05\26\00\41\0f\fb\30\06\26\00\0b\8b\80"
  "\80\80\00\00\20\00\25\00\20\01\25\00\d5\0b"
)
(invoke "init")

(assert_return (invoke "eq" (i32.const 0xc) (i32.const 0xd)) (i32.const 0x1))
