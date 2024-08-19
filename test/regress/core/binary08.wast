;; Multiple element sections
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\09\01\00"                 ;; Element section with zero entries
      "\09\01\00"                 ;; Element section with zero entries
  )
  "unexpected content after last section"
)
