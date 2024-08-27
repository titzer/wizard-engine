;; Multiple code sections
(assert_malformed
  (module binary
    "\00asm" "\01\00\00\00"
    "\01\04\01\60\00\00"           ;; Type section
    "\03\03\02\00\00"              ;; Function section with 2 functions
    "\0a\04\01\02\00\0b"           ;; Code section with 1 empty function
    "\0a\04\01\02\00\0b"           ;; Code section with 1 empty function
  )
  "unexpected content after last section"
)
