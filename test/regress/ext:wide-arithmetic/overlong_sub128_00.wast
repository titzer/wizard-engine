(module binary
  "\00asm" "\01\00\00\00"

  "\01\11"                  ;; type section, 17 bytes
  "\02"                     ;; 2 count
  "\60"                     ;; type0 = function
  "\04\7e\7e\7e\7e"         ;;  4 params - all i64
  "\02\7e\7e"               ;;  2 results - both i64
  "\60"                     ;; type1 = function
  "\02\7e\7e"               ;;  2 params - both i64
  "\02\7e\7e"               ;;  2 results - both i64

  "\03\05"                  ;; function section, 5 byte
  "\04"                     ;; 4 count
  "\00\00\01\01"            ;; types of each function (0, 0, 1, 1)

  "\07\3d"                  ;; export section 0x3d bytes
  "\04"                     ;; 4 count
  "\0ai64.add128\00\00"     ;; "i64.add128" which is function 0
  "\0ai64.sub128\00\01"     ;; "i64.add128" which is function 1
  "\0ei64.mul_wide_s\00\02" ;; "i64.mul_wide_s" which is function 2
  "\0ei64.mul_wide_u\00\03" ;; "i64.mul_wide_s" which is function 3

  "\0a\37"                  ;; code section + byte length
  "\04"                     ;; 4 count

  "\0e"                     ;; byte length
  "\00"                     ;; no locals
  "\20\00"                  ;; local.get 0
  "\20\01"                  ;; local.get 1
  "\20\02"                  ;; local.get 2
  "\20\03"                  ;; local.get 3
  "\fc\93\80\00"            ;; i64.add128 (overlong)
  "\0b"                     ;; end

  "\0d"                     ;; byte length
  "\00"                     ;; no locals
  "\20\00"                  ;; local.get 0
  "\20\01"                  ;; local.get 1
  "\20\02"                  ;; local.get 2
  "\20\03"                  ;; local.get 3
  "\fc\94\00"               ;; i64.sub128 (overlong)
  "\0b"                     ;; end

  "\0c"                     ;; byte length
  "\00"                     ;; no locals
  "\20\00"                  ;; local.get 0
  "\20\01"                  ;; local.get 1
  "\fc\95\80\80\80\00"      ;; i64.mul_wide_s (overlong)
  "\0b"                     ;; end

  "\0b"                     ;; byte length
  "\00"                     ;; no locals
  "\20\00"                  ;; local.get 0
  "\20\01"                  ;; local.get 1
  "\fc\96\80\80\00"         ;; i64.mul_wide_u (overlong)
  "\0b"                     ;; end
)
(assert_return (invoke "i64.sub128"
                  (i64.const 2) (i64.const 5)
                  (i64.const 1) (i64.const 2))
               (i64.const 1) (i64.const 3))
