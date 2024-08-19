;; Datacount section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\0a\01\00"                 ;; Code section with zero entries
      "\0c\01\01"                 ;; Datacount section with value "1"
  )
  "unexpected content after last section"
)
