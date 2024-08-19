;; Import section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\03\01\00"                 ;; Function section with zero entries
      "\02\01\00"                 ;; Import section with zero entries
  )
  "unexpected content after last section"
)
