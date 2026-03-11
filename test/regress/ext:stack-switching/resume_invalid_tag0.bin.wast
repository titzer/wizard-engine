;; Regression: readSuspensionHandlers must null-check readTagRef() result
;; before accessing tag_index (avoids null dereference on invalid tag index)
(assert_invalid
  (module binary
    "\00\61\73\6d\01\00\00\00"  ;; header
    "\01\06\02\60\00\00\5d\00"  ;; type section: type 0 = func () -> (), type 1 = cont(0)
    "\03\02\01\00"              ;; function section: 1 func of type 0
    "\0a\0f\01\0d\01\01\63\01\20\00\e3\01\01\00\63\00\0b"
    ;; code section: 1 body, local (ref null cont(1)),
    ;; local.get 0, resume (cont 1) with 1 handler: suspend tag=99 label=0, end
  )
  "tag"
)
