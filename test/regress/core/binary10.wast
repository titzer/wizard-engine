;; Multiple type sections
(assert_malformed
  (module binary
    "\00asm" "\01\00\00\00"
    "\01\01\00"                   ;; Type section with zero entries
    "\01\01\00"                   ;; Type section with zero entries
  )
  "unexpected content after last section"
)
