;; Multiple global sections
(assert_malformed
  (module binary
    "\00asm" "\01\00\00\00"
    "\06\01\00"                   ;; Global section with zero entries
    "\06\01\00"                   ;; Global section with zero entries
  )
  "unexpected content after last section"
)
