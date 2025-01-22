(module binary
  "\00\61\73\6d\01\00\00\00\01\99\80\80\80\00\05\60"
  "\01\7f\01\64\6c\60\01\7f\01\7f\60\00\01\7f\60\00"
  "\02\7f\7f\60\01\7f\00\03\88\80\80\80\00\07\00\01"
  "\01\02\02\03\04\06\91\80\80\80\00\02\64\6c\00\41"
  "\02\fb\1c\0b\64\6c\01\41\03\fb\1c\0b\07\cc\80\80"
  "\80\00\07\03\6e\65\77\00\00\05\67\65\74\5f\75\00"
  "\01\05\67\65\74\5f\73\00\02\0a\67\65\74\5f\75\2d"
  "\6e\75\6c\6c\00\03\0a\67\65\74\5f\73\2d\6e\75\6c"
  "\6c\00\04\0b\67\65\74\5f\67\6c\6f\62\61\6c\73\00"
  "\05\0a\73\65\74\5f\67\6c\6f\62\61\6c\00\06\0a\d8"
  "\80\80\80\00\07\86\80\80\80\00\00\20\00\fb\1c\0b"
  "\88\80\80\80\00\00\20\00\fb\1c\fb\1e\0b\88\80\80"
  "\80\00\00\20\00\fb\1c\fb\1d\0b\86\80\80\80\00\00"
  "\d0\6c\fb\1e\0b\86\80\80\80\00\00\d0\6c\fb\1d\0b"
  "\8a\80\80\80\00\00\23\00\fb\1e\23\01\fb\1e\0b\88"
  "\80\80\80\00\00\20\00\fb\1c\24\01\0b"
)
(assert_return (invoke "new" (i32.const 0x1)) (ref.i31))
(assert_return (invoke "get_u" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "get_u" (i32.const 0x64)) (i32.const 0x64))
(assert_return (invoke "get_u" (i32.const 0xffff_ffff)) (i32.const 0x7fff_ffff))
(assert_return (invoke "get_u" (i32.const 0x3fff_ffff)) (i32.const 0x3fff_ffff))
(assert_return (invoke "get_u" (i32.const 0x4000_0000)) (i32.const 0x4000_0000))
(assert_return (invoke "get_u" (i32.const 0x7fff_ffff)) (i32.const 0x7fff_ffff))
(assert_return (invoke "get_u" (i32.const 0xaaaa_aaaa)) (i32.const 0x2aaa_aaaa))
(assert_return (invoke "get_u" (i32.const 0xcaaa_aaaa)) (i32.const 0x4aaa_aaaa))
(assert_return (invoke "get_s" (i32.const 0x0)) (i32.const 0x0))
(assert_return (invoke "get_s" (i32.const 0x64)) (i32.const 0x64))
(assert_return (invoke "get_s" (i32.const 0xffff_ffff)) (i32.const 0xffff_ffff))
(assert_return (invoke "get_s" (i32.const 0x3fff_ffff)) (i32.const 0x3fff_ffff))
(assert_return (invoke "get_s" (i32.const 0x4000_0000)) (i32.const 0xc000_0000))
(assert_return (invoke "get_s" (i32.const 0x7fff_ffff)) (i32.const 0xffff_ffff))
(assert_return (invoke "get_s" (i32.const 0xaaaa_aaaa)) (i32.const 0x2aaa_aaaa))
(assert_return (invoke "get_s" (i32.const 0xcaaa_aaaa)) (i32.const 0xcaaa_aaaa))
(assert_trap (invoke "get_u-null") "null i31 reference")
(assert_trap (invoke "get_s-null") "null i31 reference")
(assert_return (invoke "get_globals") (i32.const 0x2) (i32.const 0x3))
(invoke "set_global" (i32.const 0x4d2))
(assert_return (invoke "get_globals") (i32.const 0x2) (i32.const 0x4d2))
