;; Export count can be 0
(module binary
  "\00asm" "\01\00\00\00"
  "\01\04\01"                               ;; type section
  "\60\00\00"                               ;; type 0
  "\03\03\02\00\00"                         ;; func section
  "\07\01\00"                               ;; export count can be zero
  "\0a\07\02"                               ;; code section
  "\02\00\0b"                               ;; function body 0
  "\02\00\0b"                               ;; function body 1
)
