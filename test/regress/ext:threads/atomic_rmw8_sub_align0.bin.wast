;; Regression: i32.atomic.rmw8.sub_u with align=2 must be rejected
;; (max alignment for RMW8 is 1, was incorrectly 4 due to copy-paste)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00"          ;; header
    "\01\07\01\60\02\7f\7f\01\7f"      ;; type section: func (i32, i32) -> i32
    "\03\02\01\00"                      ;; function section: 1 func of type 0
    "\05\04\01\03\01\01"                ;; memory section: 1 shared memory (min=1, max=1)
    "\0a\0c\01\0a\00\20\00\20\01\fe\27\02\00\0b"
    ;; code section: local.get 0, local.get 1,
    ;; i32.atomic.rmw8.sub_u (align=2, offset=0), end
  )
  "alignment"
)
