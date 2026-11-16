;; Regression: i64.atomic.rmw.or must OR the operand into memory.
;; The V3 interpreter dispatched I64_ATOMIC_RMW_OR to I64_AND. atomic_or_i64
;; only checks the returned (old) value, which is identical for AND and OR,
;; so this test also checks the value left in memory after the RMW.
(module binary
  "\00\61\73\6d\01\00\00\00\01\0b\02\60\02\7e\7e\01"
  "\7e\60\00\01\7e\03\03\02\00\01\05\03\01\00\01\07"
  "\1a\03\06\6d\65\6d\6f\72\79\02\00\06\72\6d\77\5f"
  "\6f\72\00\00\04\6c\6f\61\64\00\01\0a\1b\02\11\00"
  "\41\00\20\00\37\03\00\41\00\20\01\fe\34\03\00\0b"
  "\07\00\41\00\29\03\00\0b")
(assert_return (invoke "rmw_or" (i64.const 5) (i64.const 3)) (i64.const 5))
(assert_return (invoke "load") (i64.const 7))
(assert_return (invoke "rmw_or" (i64.const 0x1122334455667788) (i64.const 0xf0f0f0f0f0f0f0f0)) (i64.const 0x1122334455667788))
(assert_return (invoke "load") (i64.const 0xf1f2f3f4f5f6f7f8))
(assert_return (invoke "rmw_or" (i64.const 0) (i64.const 0x8000000000000001)) (i64.const 0))
(assert_return (invoke "load") (i64.const 0x8000000000000001))
