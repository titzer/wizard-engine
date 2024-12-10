(assert_invalid
  (module binary
    "\00asm" "\01\00\00\00"    ;; Magic
    "\01\04\01\60\00\00"       ;; Type section: 1 type
    "\03\02\01\00"             ;; Function section: 1 function
    "\04\0a\01"                ;; Table section: 1 table
      "\40\00\64\70\00\01\d2\00\0b"  ;; Table 0: [1..] (ref func) (ref.func 0)
    "\09\09\01"                ;; Elem section: 1 element segment
      "\04\41\00\0b\01\d2\00\0b"  ;; Segment 0: (i32.const 0) (ref.func 0)
    "\0a\04\01"                ;; Code section: 1 function
      "\02\00\0b"              ;; Function 0: empty
  )
  "type mismatch"
)
