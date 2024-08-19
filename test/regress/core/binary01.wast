;; Multiple function sections
(assert_malformed
  (module binary
    "\00asm" "\01\00\00\00"
    "\01\04\01\60\00\00"           ;; Type section
    "\03\02\01\00"                 ;; Function section with 1 function
    "\03\02\01\00"                 ;; Function section with 1 function
    "\0a\07\02\02\00\0b\02\00\0b"  ;; Code section with 2 empty functions
  )
  "unexpected content after last section"
)
