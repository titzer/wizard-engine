;; Multiple export sections
(assert_malformed
  (module binary
    "\00asm" "\01\00\00\00"
    "\07\01\00"                   ;; Export section with zero entries
    "\07\01\00"                   ;; Export section with zero entries
  )
  "unexpected content after last section"
)
