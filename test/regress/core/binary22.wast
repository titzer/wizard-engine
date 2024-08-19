;; Code section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\0b\01\00"                 ;; Data section with zero entries
      "\0a\01\00"                 ;; Code section with zero entries
  )
  "unexpected content after last section"
)
