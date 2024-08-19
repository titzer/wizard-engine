;; Element section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\0c\01\01"                 ;; Datacount section with value "1"
      "\09\01\00"                 ;; Element section with zero entries
  )
  "unexpected content after last section"
)
