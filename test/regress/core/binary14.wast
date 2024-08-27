;; Function section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\04\01\00"                 ;; Table section with zero entries
      "\03\01\00"                 ;; Function section with zero entries
  )
  "unexpected content after last section"
)
