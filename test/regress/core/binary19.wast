;; Start section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\03\02\01\00"              ;; Function section
      "\09\01\00"                 ;; Element section with zero entries
      "\08\01\00"                 ;; Start section: function 0
  )
  "unexpected content after last section"
)
