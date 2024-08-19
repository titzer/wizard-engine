;; Multiple memory sections
(assert_malformed
  (module binary
    "\00asm" "\01\00\00\00"
    "\05\01\00"                   ;; Memory section with zero entries
    "\05\01\00"                   ;; Memory section with zero entries
  )
  "unexpected content after last section"
)
