;; Export section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\03\02\01\00"              ;; Function section
      "\08\01\00"                 ;; Start section: function 0
      "\07\01\00"                 ;; Export section with zero entries
  )
  "unexpected content after last section"
)
