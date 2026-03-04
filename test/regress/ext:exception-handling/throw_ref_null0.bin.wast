(module binary
  "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02"
  "\01\00\07\12\01\0e\74\68\72\6f\77\5f\72\65\66\5f"
  "\6e\75\6c\6c\00\00\0a\07\01\05\00\d0\69\0a\0b"
)
;; throw_ref with null exnref must trap with null deref, not crash.
(assert_trap (invoke "throw_ref_null") "null")
