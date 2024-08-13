;; Table section out of order
(assert_malformed
  (module binary
      "\00asm" "\01\00\00\00"
      "\05\01\00"                 ;; Memory section with zero entries
      "\04\01\00"                 ;; Table section with zero entries
  )
  "unexpected content after last section"
)
