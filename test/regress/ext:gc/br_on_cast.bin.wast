(module binary
  "\00\61\73\6d\01\00\00\00\01\a1\80\80\80\00\07\60"
  "\00\01\7f\5f\01\77\00\5e\78\00\60\01\6f\00\60\01"
  "\7f\01\7f\60\01\6b\01\64\02\60\01\6b\01\64\01\03"
  "\88\80\80\80\00\07\00\03\04\04\04\04\04\04\84\80"
  "\80\80\00\01\6e\00\0a\07\ca\80\80\80\00\06\04\69"
  "\6e\69\74\00\01\0a\62\72\5f\6f\6e\5f\6e\75\6c\6c"
  "\00\02\09\62\72\5f\6f\6e\5f\69\33\31\00\03\0c\62"
  "\72\5f\6f\6e\5f\73\74\72\75\63\74\00\04\0b\62\72"
  "\5f\6f\6e\5f\61\72\72\61\79\00\05\09\6e\75\6c\6c"
  "\2d\64\69\66\66\00\06\09\85\80\80\80\00\01\03\00"
  "\01\00\0a\d9\81\80\80\00\07\84\80\80\80\00\00\41"
  "\09\0b\ac\80\80\80\00\00\41\00\d0\6e\26\00\41\01"
  "\41\07\fb\1c\26\00\41\02\41\06\fb\00\01\26\00\41"
  "\03\41\05\41\03\fb\06\02\26\00\41\04\20\00\fb\1a"
  "\26\00\0b\90\80\80\80\00\00\02\40\20\00\25\00\d5"
  "\00\41\7f\0f\0b\41\00\0b\95\80\80\80\00\00\02\64"
  "\6c\20\00\25\00\fb\18\01\00\6e\6c\41\7f\0f\0b\fb"
  "\1e\0b\b2\80\80\80\00\00\02\64\6b\20\00\25\00\fb"
  "\18\01\00\6e\6b\41\7f\0f\0b\02\06\02\05\fb\18\01"
  "\01\6b\01\fb\18\01\00\6e\02\41\7e\0f\0b\41\00\fb"
  "\0d\02\0f\0b\fb\03\01\00\0b\95\80\80\80\00\00\02"
  "\64\6a\20\00\25\00\fb\18\01\00\6e\6a\41\7f\0f\0b"
  "\fb\0f\0b\99\80\80\80\00\00\02\6b\02\64\6e\20\00"
  "\25\00\fb\18\03\01\6e\6b\0b\41\00\0f\0b\41\01\0f"
  "\0b"
)
(invoke "init" (ref.extern 0))
(assert_return (invoke "br_on_null" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "br_on_null" (i32.const 0x1)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_null" (i32.const 0x2)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_null" (i32.const 0x3)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_null" (i32.const 0x4)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_i31" (i32.const 0x0)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_i31" (i32.const 0x1)) (i32.const 0x7))
(assert_return (invoke "br_on_i31" (i32.const 0x2)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_i31" (i32.const 0x3)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_i31" (i32.const 0x4)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_struct" (i32.const 0x0)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_struct" (i32.const 0x1)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_struct" (i32.const 0x2)) (i32.const 0x6))
(assert_return (invoke "br_on_struct" (i32.const 0x3)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_struct" (i32.const 0x4)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_array" (i32.const 0x0)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_array" (i32.const 0x1)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_array" (i32.const 0x2)) (i32.const 0xffff_ffff))
(assert_return (invoke "br_on_array" (i32.const 0x3)) (i32.const 0x3))
(assert_return (invoke "br_on_array" (i32.const 0x4)) (i32.const 0xffff_ffff))
(assert_return (invoke "null-diff" (i32.const 0x0)) (i32.const 0x1))
(assert_return (invoke "null-diff" (i32.const 0x1)) (i32.const 0x0))
(assert_return (invoke "null-diff" (i32.const 0x2)) (i32.const 0x1))
(assert_return (invoke "null-diff" (i32.const 0x3)) (i32.const 0x0))
(assert_return (invoke "null-diff" (i32.const 0x4)) (i32.const 0x0))
(module binary
  "\00\61\73\6d\01\00\00\00\01\bf\80\80\80\00\09\50"
  "\00\5f\00\50\01\00\5f\01\7f\00\50\01\00\5f\01\7f"
  "\00\50\01\01\5f\02\7f\00\7f\00\50\01\02\5f\02\7f"
  "\00\7f\00\50\01\00\5f\02\7f\00\7f\00\50\01\00\5f"
  "\00\50\01\06\5f\02\7f\00\7f\00\60\00\00\03\84\80"
  "\80\80\00\03\08\08\08\04\84\80\80\80\00\01\6b\00"
  "\14\07\99\80\80\80\00\02\08\74\65\73\74\2d\73\75"
  "\62\00\01\0a\74\65\73\74\2d\63\61\6e\6f\6e\00\02"
  "\0a\fe\84\80\80\00\03\ba\80\80\80\00\00\41\00\fb"
  "\01\00\26\00\41\0a\fb\01\06\26\00\41\01\fb\01\01"
  "\26\00\41\0b\fb\01\02\26\00\41\02\fb\01\03\26\00"
  "\41\0c\fb\01\04\26\00\41\03\fb\01\05\26\00\41\04"
  "\fb\01\07\26\00\0b\e7\82\80\80\00\00\10\00\02\6b"
  "\02\6b\d0\6b\fb\18\01\00\6b\00\0b\1a\02\6b\41\00"
  "\25\00\fb\18\01\00\6b\00\0b\1a\02\6b\41\01\25\00"
  "\fb\18\01\00\6b\00\0b\1a\02\6b\41\02\25\00\fb\18"
  "\01\00\6b\00\0b\1a\02\6b\41\03\25\00\fb\18\01\00"
  "\6b\00\0b\1a\02\6b\41\04\25\00\fb\18\01\00\6b\00"
  "\0b\1a\02\6b\d0\6b\fb\18\01\00\6b\01\0b\1a\02\6b"
  "\41\01\25\00\fb\18\01\00\6b\01\0b\1a\02\6b\41\02"
  "\25\00\fb\18\01\00\6b\01\0b\1a\02\6b\d0\6b\fb\18"
  "\01\00\6b\03\0b\1a\02\6b\41\02\25\00\fb\18\01\00"
  "\6b\03\0b\1a\02\6b\d0\6b\fb\18\01\00\6b\05\0b\1a"
  "\02\6b\41\03\25\00\fb\18\01\00\6b\05\0b\1a\02\6b"
  "\d0\6b\fb\18\01\00\6b\07\0b\1a\02\6b\41\04\25\00"
  "\fb\18\01\00\6b\07\0b\1a\41\00\25\00\fb\18\01\00"
  "\6e\01\41\03\25\00\fb\18\01\00\6e\01\41\04\25\00"
  "\fb\18\01\00\6e\01\41\00\25\00\fb\18\01\00\6e\03"
  "\41\01\25\00\fb\18\01\00\6e\03\41\03\25\00\fb\18"
  "\01\00\6e\03\41\04\25\00\fb\18\01\00\6e\03\41\00"
  "\25\00\fb\18\01\00\6e\05\41\01\25\00\fb\18\01\00"
  "\6e\05\41\02\25\00\fb\18\01\00\6e\05\41\04\25\00"
  "\fb\18\01\00\6e\05\41\00\25\00\fb\18\01\00\6e\07"
  "\41\01\25\00\fb\18\01\00\6e\07\41\02\25\00\fb\18"
  "\01\00\6e\07\41\03\25\00\fb\18\01\00\6e\07\0f\0b"
  "\00\0b\cd\81\80\80\00\00\10\00\02\40\02\6b\41\00"
  "\25\00\fb\18\01\00\6b\06\0b\1a\02\6b\41\01\25\00"
  "\fb\18\01\00\6b\06\0b\1a\02\6b\41\02\25\00\fb\18"
  "\01\00\6b\06\0b\1a\02\6b\41\03\25\00\fb\18\01\00"
  "\6b\06\0b\1a\02\6b\41\04\25\00\fb\18\01\00\6b\06"
  "\0b\1a\02\6b\41\0a\25\00\fb\18\01\00\6b\00\0b\1a"
  "\02\6b\41\0b\25\00\fb\18\01\00\6b\00\0b\1a\02\6b"
  "\41\0c\25\00\fb\18\01\00\6b\00\0b\1a\02\6b\41\01"
  "\25\00\fb\18\01\00\6b\02\0b\1a\02\6b\41\02\25\00"
  "\fb\18\01\00\6b\02\0b\1a\02\6b\41\0b\25\00\fb\18"
  "\01\00\6b\01\0b\1a\02\6b\41\0c\25\00\fb\18\01\00"
  "\6b\01\0b\1a\02\6b\41\02\25\00\fb\18\01\00\6b\04"
  "\0b\1a\02\6b\41\0c\25\00\fb\18\01\00\6b\03\0b\1a"
  "\0f\0b\00\0b"
)
(invoke "test-sub")
(invoke "test-canon")
(module binary
  "\00\61\73\6d\01\00\00\00\01\96\80\80\80\00\04\5f"
  "\00\60\01\64\6e\01\64\00\60\01\6e\01\64\00\60\01"
  "\6e\01\63\00\03\84\80\80\80\00\03\01\02\03\0a\bb"
  "\80\80\80\00\03\8f\80\80\80\00\00\02\64\6e\20\00"
  "\fb\18\00\01\6e\00\0b\00\0b\8e\80\80\80\00\00\02"
  "\6e\20\00\fb\18\01\01\6e\00\0b\00\0b\8e\80\80\80"
  "\00\00\02\6e\20\00\fb\18\03\01\6e\00\0b\00\0b"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\5f"
    "\00\60\01\64\6e\01\64\00\03\82\80\80\80\00\01\01"
    "\0a\95\80\80\80\00\01\8f\80\80\80\00\00\02\64\6e"
    "\20\00\fb\18\03\01\6e\00\0b\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\8a\80\80\80\00\02\5f"
    "\00\60\01\64\6e\01\63\00\03\82\80\80\80\00\01\01"
    "\0a\95\80\80\80\00\01\8f\80\80\80\00\00\02\64\6e"
    "\20\00\fb\18\02\01\6e\00\0b\00\0b"
  )
  "type mismatch"
)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00\01\89\80\80\80\00\02\5f"
    "\00\60\01\6e\01\64\00\03\82\80\80\80\00\01\01\0a"
    "\95\80\80\80\00\01\8f\80\80\80\00\00\02\64\6e\20"
    "\00\fb\18\01\01\6e\00\0b\00\0b"
  )
  "type mismatch"
)
