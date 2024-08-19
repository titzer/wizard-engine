;; Multiple data count sections
(assert_malformed
  (module binary
    "\00asm" "\01\00\00\00"
    "\0c\01\01"                   ;; Datacount section with value "1"
    "\0c\01\01"                   ;; Datacount section with value "1"
  )
  "unexpected content after last section"
)
