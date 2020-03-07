;; i32.wast:3
(module  binary "\00\61\73\6d\01\00\00\00\01\0c\02\60\02\7f\7f\01\7f\60\01\7f\01\7f\03\1e\1d\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\00\00\00\00\00\00\00\00\00\00\07\c5\01\1d\03\61\64\64\00\00\03\73\75\62\00\01\03\6d\75\6c\00\02\05\64\69\76\5f\73\00\03\05\64\69\76\5f\75\00\04\05\72\65\6d\5f\73\00\05\05\72\65\6d\5f\75\00\06\03\61\6e\64\00\07\02\6f\72\00\08\03\78\6f\72\00\09\03\73\68\6c\00\0a\05\73\68\72\5f\73\00\0b\05\73\68\72\5f\75\00\0c\04\72\6f\74\6c\00\0d\04\72\6f\74\72\00\0e\03\63\6c\7a\00\0f\03\63\74\7a\00\10\06\70\6f\70\63\6e\74\00\11\03\65\71\7a\00\12\02\65\71\00\13\02\6e\65\00\14\04\6c\74\5f\73\00\15\04\6c\74\5f\75\00\16\04\6c\65\5f\73\00\17\04\6c\65\5f\75\00\18\04\67\74\5f\73\00\19\04\67\74\5f\75\00\1a\04\67\65\5f\73\00\1b\04\67\65\5f\75\00\1c\0a\e1\01\1d\07\00\20\00\20\01\6a\0b\07\00\20\00\20\01\6b\0b\07\00\20\00\20\01\6c\0b\07\00\20\00\20\01\6d\0b\07\00\20\00\20\01\6e\0b\07\00\20\00\20\01\6f\0b\07\00\20\00\20\01\70\0b\07\00\20\00\20\01\71\0b\07\00\20\00\20\01\72\0b\07\00\20\00\20\01\73\0b\07\00\20\00\20\01\74\0b\07\00\20\00\20\01\75\0b\07\00\20\00\20\01\76\0b\07\00\20\00\20\01\77\0b\07\00\20\00\20\01\78\0b\05\00\20\00\67\0b\05\00\20\00\68\0b\05\00\20\00\69\0b\05\00\20\00\45\0b\07\00\20\00\20\01\46\0b\07\00\20\00\20\01\47\0b\07\00\20\00\20\01\48\0b\07\00\20\00\20\01\49\0b\07\00\20\00\20\01\4c\0b\07\00\20\00\20\01\4d\0b\07\00\20\00\20\01\4a\0b\07\00\20\00\20\01\4b\0b\07\00\20\00\20\01\4e\0b\07\00\20\00\20\01\4f\0b")

;; i32.wast:35
(assert_return (invoke  "add" (i32.const 1) (i32.const 1)) (i32.const 2))

;; i32.wast:36
(assert_return (invoke  "add" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:37
(assert_return (invoke  "add" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 4294967294))

;; i32.wast:38
(assert_return (invoke  "add" (i32.const 4294967295) (i32.const 1)) (i32.const 0))

;; i32.wast:39
(assert_return (invoke  "add" (i32.const 2147483647) (i32.const 1)) (i32.const 2147483648))

;; i32.wast:40
(assert_return (invoke  "add" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 2147483647))

;; i32.wast:41
(assert_return (invoke  "add" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:42
(assert_return (invoke  "add" (i32.const 1073741823) (i32.const 1)) (i32.const 1073741824))

;; i32.wast:44
(assert_return (invoke  "sub" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:45
(assert_return (invoke  "sub" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:46
(assert_return (invoke  "sub" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:47
(assert_return (invoke  "sub" (i32.const 2147483647) (i32.const 4294967295)) (i32.const 2147483648))

;; i32.wast:48
(assert_return (invoke  "sub" (i32.const 2147483648) (i32.const 1)) (i32.const 2147483647))

;; i32.wast:49
(assert_return (invoke  "sub" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:50
(assert_return (invoke  "sub" (i32.const 1073741823) (i32.const 4294967295)) (i32.const 1073741824))

;; i32.wast:52
(assert_return (invoke  "mul" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:53
(assert_return (invoke  "mul" (i32.const 1) (i32.const 0)) (i32.const 0))

;; i32.wast:54
(assert_return (invoke  "mul" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:55
(assert_return (invoke  "mul" (i32.const 268435456) (i32.const 4096)) (i32.const 0))

;; i32.wast:56
(assert_return (invoke  "mul" (i32.const 2147483648) (i32.const 0)) (i32.const 0))

;; i32.wast:57
(assert_return (invoke  "mul" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 2147483648))

;; i32.wast:58
(assert_return (invoke  "mul" (i32.const 2147483647) (i32.const 4294967295)) (i32.const 2147483649))

;; i32.wast:59
(assert_return (invoke  "mul" (i32.const 19088743) (i32.const 1985229328)) (i32.const 898528368))

;; i32.wast:60
(assert_return (invoke  "mul" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:62
(assert_trap (invoke  "div_s" (i32.const 1) (i32.const 0)))

;; i32.wast:63
(assert_trap (invoke  "div_s" (i32.const 0) (i32.const 0)))

;; i32.wast:64
(assert_trap (invoke  "div_s" (i32.const 2147483648) (i32.const 4294967295)))

;; i32.wast:65
(assert_trap (invoke  "div_s" (i32.const 2147483648) (i32.const 0)))

;; i32.wast:66
(assert_return (invoke  "div_s" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:67
(assert_return (invoke  "div_s" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:68
(assert_return (invoke  "div_s" (i32.const 0) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:69
(assert_return (invoke  "div_s" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:70
(assert_return (invoke  "div_s" (i32.const 2147483648) (i32.const 2)) (i32.const 3221225472))

;; i32.wast:71
(assert_return (invoke  "div_s" (i32.const 2147483649) (i32.const 1000)) (i32.const 4292819813))

;; i32.wast:72
(assert_return (invoke  "div_s" (i32.const 5) (i32.const 2)) (i32.const 2))

;; i32.wast:73
(assert_return (invoke  "div_s" (i32.const 4294967291) (i32.const 2)) (i32.const 4294967294))

;; i32.wast:74
(assert_return (invoke  "div_s" (i32.const 5) (i32.const 4294967294)) (i32.const 4294967294))

;; i32.wast:75
(assert_return (invoke  "div_s" (i32.const 4294967291) (i32.const 4294967294)) (i32.const 2))

;; i32.wast:76
(assert_return (invoke  "div_s" (i32.const 7) (i32.const 3)) (i32.const 2))

;; i32.wast:77
(assert_return (invoke  "div_s" (i32.const 4294967289) (i32.const 3)) (i32.const 4294967294))

;; i32.wast:78
(assert_return (invoke  "div_s" (i32.const 7) (i32.const 4294967293)) (i32.const 4294967294))

;; i32.wast:79
(assert_return (invoke  "div_s" (i32.const 4294967289) (i32.const 4294967293)) (i32.const 2))

;; i32.wast:80
(assert_return (invoke  "div_s" (i32.const 11) (i32.const 5)) (i32.const 2))

;; i32.wast:81
(assert_return (invoke  "div_s" (i32.const 17) (i32.const 7)) (i32.const 2))

;; i32.wast:83
(assert_trap (invoke  "div_u" (i32.const 1) (i32.const 0)))

;; i32.wast:84
(assert_trap (invoke  "div_u" (i32.const 0) (i32.const 0)))

;; i32.wast:85
(assert_return (invoke  "div_u" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:86
(assert_return (invoke  "div_u" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:87
(assert_return (invoke  "div_u" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:88
(assert_return (invoke  "div_u" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:89
(assert_return (invoke  "div_u" (i32.const 2147483648) (i32.const 2)) (i32.const 1073741824))

;; i32.wast:90
(assert_return (invoke  "div_u" (i32.const 2414874608) (i32.const 65537)) (i32.const 36847))

;; i32.wast:91
(assert_return (invoke  "div_u" (i32.const 2147483649) (i32.const 1000)) (i32.const 2147483))

;; i32.wast:92
(assert_return (invoke  "div_u" (i32.const 5) (i32.const 2)) (i32.const 2))

;; i32.wast:93
(assert_return (invoke  "div_u" (i32.const 4294967291) (i32.const 2)) (i32.const 2147483645))

;; i32.wast:94
(assert_return (invoke  "div_u" (i32.const 5) (i32.const 4294967294)) (i32.const 0))

;; i32.wast:95
(assert_return (invoke  "div_u" (i32.const 4294967291) (i32.const 4294967294)) (i32.const 0))

;; i32.wast:96
(assert_return (invoke  "div_u" (i32.const 7) (i32.const 3)) (i32.const 2))

;; i32.wast:97
(assert_return (invoke  "div_u" (i32.const 11) (i32.const 5)) (i32.const 2))

;; i32.wast:98
(assert_return (invoke  "div_u" (i32.const 17) (i32.const 7)) (i32.const 2))

;; i32.wast:100
(assert_trap (invoke  "rem_s" (i32.const 1) (i32.const 0)))

;; i32.wast:101
(assert_trap (invoke  "rem_s" (i32.const 0) (i32.const 0)))

;; i32.wast:102
(assert_return (invoke  "rem_s" (i32.const 2147483647) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:103
(assert_return (invoke  "rem_s" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:104
(assert_return (invoke  "rem_s" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:105
(assert_return (invoke  "rem_s" (i32.const 0) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:106
(assert_return (invoke  "rem_s" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:107
(assert_return (invoke  "rem_s" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:108
(assert_return (invoke  "rem_s" (i32.const 2147483648) (i32.const 2)) (i32.const 0))

;; i32.wast:109
(assert_return (invoke  "rem_s" (i32.const 2147483649) (i32.const 1000)) (i32.const 4294966649))

;; i32.wast:110
(assert_return (invoke  "rem_s" (i32.const 5) (i32.const 2)) (i32.const 1))

;; i32.wast:111
(assert_return (invoke  "rem_s" (i32.const 4294967291) (i32.const 2)) (i32.const 4294967295))

;; i32.wast:112
(assert_return (invoke  "rem_s" (i32.const 5) (i32.const 4294967294)) (i32.const 1))

;; i32.wast:113
(assert_return (invoke  "rem_s" (i32.const 4294967291) (i32.const 4294967294)) (i32.const 4294967295))

;; i32.wast:114
(assert_return (invoke  "rem_s" (i32.const 7) (i32.const 3)) (i32.const 1))

;; i32.wast:115
(assert_return (invoke  "rem_s" (i32.const 4294967289) (i32.const 3)) (i32.const 4294967295))

;; i32.wast:116
(assert_return (invoke  "rem_s" (i32.const 7) (i32.const 4294967293)) (i32.const 1))

;; i32.wast:117
(assert_return (invoke  "rem_s" (i32.const 4294967289) (i32.const 4294967293)) (i32.const 4294967295))

;; i32.wast:118
(assert_return (invoke  "rem_s" (i32.const 11) (i32.const 5)) (i32.const 1))

;; i32.wast:119
(assert_return (invoke  "rem_s" (i32.const 17) (i32.const 7)) (i32.const 3))

;; i32.wast:121
(assert_trap (invoke  "rem_u" (i32.const 1) (i32.const 0)))

;; i32.wast:122
(assert_trap (invoke  "rem_u" (i32.const 0) (i32.const 0)))

;; i32.wast:123
(assert_return (invoke  "rem_u" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:124
(assert_return (invoke  "rem_u" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:125
(assert_return (invoke  "rem_u" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:126
(assert_return (invoke  "rem_u" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 2147483648))

;; i32.wast:127
(assert_return (invoke  "rem_u" (i32.const 2147483648) (i32.const 2)) (i32.const 0))

;; i32.wast:128
(assert_return (invoke  "rem_u" (i32.const 2414874608) (i32.const 65537)) (i32.const 32769))

;; i32.wast:129
(assert_return (invoke  "rem_u" (i32.const 2147483649) (i32.const 1000)) (i32.const 649))

;; i32.wast:130
(assert_return (invoke  "rem_u" (i32.const 5) (i32.const 2)) (i32.const 1))

;; i32.wast:131
(assert_return (invoke  "rem_u" (i32.const 4294967291) (i32.const 2)) (i32.const 1))

;; i32.wast:132
(assert_return (invoke  "rem_u" (i32.const 5) (i32.const 4294967294)) (i32.const 5))

;; i32.wast:133
(assert_return (invoke  "rem_u" (i32.const 4294967291) (i32.const 4294967294)) (i32.const 4294967291))

;; i32.wast:134
(assert_return (invoke  "rem_u" (i32.const 7) (i32.const 3)) (i32.const 1))

;; i32.wast:135
(assert_return (invoke  "rem_u" (i32.const 11) (i32.const 5)) (i32.const 1))

;; i32.wast:136
(assert_return (invoke  "rem_u" (i32.const 17) (i32.const 7)) (i32.const 3))

;; i32.wast:138
(assert_return (invoke  "and" (i32.const 1) (i32.const 0)) (i32.const 0))

;; i32.wast:139
(assert_return (invoke  "and" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:140
(assert_return (invoke  "and" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:141
(assert_return (invoke  "and" (i32.const 0) (i32.const 0)) (i32.const 0))

;; i32.wast:142
(assert_return (invoke  "and" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:143
(assert_return (invoke  "and" (i32.const 2147483647) (i32.const 4294967295)) (i32.const 2147483647))

;; i32.wast:144
(assert_return (invoke  "and" (i32.const 4042326015) (i32.const 4294963440)) (i32.const 4042322160))

;; i32.wast:145
(assert_return (invoke  "and" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 4294967295))

;; i32.wast:147
(assert_return (invoke  "or" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:148
(assert_return (invoke  "or" (i32.const 0) (i32.const 1)) (i32.const 1))

;; i32.wast:149
(assert_return (invoke  "or" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:150
(assert_return (invoke  "or" (i32.const 0) (i32.const 0)) (i32.const 0))

;; i32.wast:151
(assert_return (invoke  "or" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 4294967295))

;; i32.wast:152
(assert_return (invoke  "or" (i32.const 2147483648) (i32.const 0)) (i32.const 2147483648))

;; i32.wast:153
(assert_return (invoke  "or" (i32.const 4042326015) (i32.const 4294963440)) (i32.const 4294967295))

;; i32.wast:154
(assert_return (invoke  "or" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 4294967295))

;; i32.wast:156
(assert_return (invoke  "xor" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:157
(assert_return (invoke  "xor" (i32.const 0) (i32.const 1)) (i32.const 1))

;; i32.wast:158
(assert_return (invoke  "xor" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:159
(assert_return (invoke  "xor" (i32.const 0) (i32.const 0)) (i32.const 0))

;; i32.wast:160
(assert_return (invoke  "xor" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 4294967295))

;; i32.wast:161
(assert_return (invoke  "xor" (i32.const 2147483648) (i32.const 0)) (i32.const 2147483648))

;; i32.wast:162
(assert_return (invoke  "xor" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 2147483647))

;; i32.wast:163
(assert_return (invoke  "xor" (i32.const 4294967295) (i32.const 2147483647)) (i32.const 2147483648))

;; i32.wast:164
(assert_return (invoke  "xor" (i32.const 4042326015) (i32.const 4294963440)) (i32.const 252645135))

;; i32.wast:165
(assert_return (invoke  "xor" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:167
(assert_return (invoke  "shl" (i32.const 1) (i32.const 1)) (i32.const 2))

;; i32.wast:168
(assert_return (invoke  "shl" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:169
(assert_return (invoke  "shl" (i32.const 2147483647) (i32.const 1)) (i32.const 4294967294))

;; i32.wast:170
(assert_return (invoke  "shl" (i32.const 4294967295) (i32.const 1)) (i32.const 4294967294))

;; i32.wast:171
(assert_return (invoke  "shl" (i32.const 2147483648) (i32.const 1)) (i32.const 0))

;; i32.wast:172
(assert_return (invoke  "shl" (i32.const 1073741824) (i32.const 1)) (i32.const 2147483648))

;; i32.wast:173
(assert_return (invoke  "shl" (i32.const 1) (i32.const 31)) (i32.const 2147483648))

;; i32.wast:174
(assert_return (invoke  "shl" (i32.const 1) (i32.const 32)) (i32.const 1))

;; i32.wast:175
(assert_return (invoke  "shl" (i32.const 1) (i32.const 33)) (i32.const 2))

;; i32.wast:176
(assert_return (invoke  "shl" (i32.const 1) (i32.const 4294967295)) (i32.const 2147483648))

;; i32.wast:177
(assert_return (invoke  "shl" (i32.const 1) (i32.const 2147483647)) (i32.const 2147483648))

;; i32.wast:179
(assert_return (invoke  "shr_s" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:180
(assert_return (invoke  "shr_s" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:181
(assert_return (invoke  "shr_s" (i32.const 4294967295) (i32.const 1)) (i32.const 4294967295))

;; i32.wast:182
(assert_return (invoke  "shr_s" (i32.const 2147483647) (i32.const 1)) (i32.const 1073741823))

;; i32.wast:183
(assert_return (invoke  "shr_s" (i32.const 2147483648) (i32.const 1)) (i32.const 3221225472))

;; i32.wast:184
(assert_return (invoke  "shr_s" (i32.const 1073741824) (i32.const 1)) (i32.const 536870912))

;; i32.wast:185
(assert_return (invoke  "shr_s" (i32.const 1) (i32.const 32)) (i32.const 1))

;; i32.wast:186
(assert_return (invoke  "shr_s" (i32.const 1) (i32.const 33)) (i32.const 0))

;; i32.wast:187
(assert_return (invoke  "shr_s" (i32.const 1) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:188
(assert_return (invoke  "shr_s" (i32.const 1) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:189
(assert_return (invoke  "shr_s" (i32.const 1) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:190
(assert_return (invoke  "shr_s" (i32.const 2147483648) (i32.const 31)) (i32.const 4294967295))

;; i32.wast:191
(assert_return (invoke  "shr_s" (i32.const 4294967295) (i32.const 32)) (i32.const 4294967295))

;; i32.wast:192
(assert_return (invoke  "shr_s" (i32.const 4294967295) (i32.const 33)) (i32.const 4294967295))

;; i32.wast:193
(assert_return (invoke  "shr_s" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 4294967295))

;; i32.wast:194
(assert_return (invoke  "shr_s" (i32.const 4294967295) (i32.const 2147483647)) (i32.const 4294967295))

;; i32.wast:195
(assert_return (invoke  "shr_s" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 4294967295))

;; i32.wast:197
(assert_return (invoke  "shr_u" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:198
(assert_return (invoke  "shr_u" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:199
(assert_return (invoke  "shr_u" (i32.const 4294967295) (i32.const 1)) (i32.const 2147483647))

;; i32.wast:200
(assert_return (invoke  "shr_u" (i32.const 2147483647) (i32.const 1)) (i32.const 1073741823))

;; i32.wast:201
(assert_return (invoke  "shr_u" (i32.const 2147483648) (i32.const 1)) (i32.const 1073741824))

;; i32.wast:202
(assert_return (invoke  "shr_u" (i32.const 1073741824) (i32.const 1)) (i32.const 536870912))

;; i32.wast:203
(assert_return (invoke  "shr_u" (i32.const 1) (i32.const 32)) (i32.const 1))

;; i32.wast:204
(assert_return (invoke  "shr_u" (i32.const 1) (i32.const 33)) (i32.const 0))

;; i32.wast:205
(assert_return (invoke  "shr_u" (i32.const 1) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:206
(assert_return (invoke  "shr_u" (i32.const 1) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:207
(assert_return (invoke  "shr_u" (i32.const 1) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:208
(assert_return (invoke  "shr_u" (i32.const 2147483648) (i32.const 31)) (i32.const 1))

;; i32.wast:209
(assert_return (invoke  "shr_u" (i32.const 4294967295) (i32.const 32)) (i32.const 4294967295))

;; i32.wast:210
(assert_return (invoke  "shr_u" (i32.const 4294967295) (i32.const 33)) (i32.const 2147483647))

;; i32.wast:211
(assert_return (invoke  "shr_u" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:212
(assert_return (invoke  "shr_u" (i32.const 4294967295) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:213
(assert_return (invoke  "shr_u" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 4294967295))

;; i32.wast:215
(assert_return (invoke  "rotl" (i32.const 1) (i32.const 1)) (i32.const 2))

;; i32.wast:216
(assert_return (invoke  "rotl" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:217
(assert_return (invoke  "rotl" (i32.const 4294967295) (i32.const 1)) (i32.const 4294967295))

;; i32.wast:218
(assert_return (invoke  "rotl" (i32.const 1) (i32.const 32)) (i32.const 1))

;; i32.wast:219
(assert_return (invoke  "rotl" (i32.const 2882377846) (i32.const 1)) (i32.const 1469788397))

;; i32.wast:220
(assert_return (invoke  "rotl" (i32.const 4261469184) (i32.const 4)) (i32.const 3758997519))

;; i32.wast:221
(assert_return (invoke  "rotl" (i32.const 2965492451) (i32.const 5)) (i32.const 406477942))

;; i32.wast:222
(assert_return (invoke  "rotl" (i32.const 32768) (i32.const 37)) (i32.const 1048576))

;; i32.wast:223
(assert_return (invoke  "rotl" (i32.const 2965492451) (i32.const 65285)) (i32.const 406477942))

;; i32.wast:224
(assert_return (invoke  "rotl" (i32.const 1989852383) (i32.const 4294967277)) (i32.const 1469837011))

;; i32.wast:225
(assert_return (invoke  "rotl" (i32.const 1989852383) (i32.const 2147483661)) (i32.const 1469837011))

;; i32.wast:226
(assert_return (invoke  "rotl" (i32.const 1) (i32.const 31)) (i32.const 2147483648))

;; i32.wast:227
(assert_return (invoke  "rotl" (i32.const 2147483648) (i32.const 1)) (i32.const 1))

;; i32.wast:229
(assert_return (invoke  "rotr" (i32.const 1) (i32.const 1)) (i32.const 2147483648))

;; i32.wast:230
(assert_return (invoke  "rotr" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:231
(assert_return (invoke  "rotr" (i32.const 4294967295) (i32.const 1)) (i32.const 4294967295))

;; i32.wast:232
(assert_return (invoke  "rotr" (i32.const 1) (i32.const 32)) (i32.const 1))

;; i32.wast:233
(assert_return (invoke  "rotr" (i32.const 4278242304) (i32.const 1)) (i32.const 2139121152))

;; i32.wast:234
(assert_return (invoke  "rotr" (i32.const 524288) (i32.const 4)) (i32.const 32768))

;; i32.wast:235
(assert_return (invoke  "rotr" (i32.const 2965492451) (i32.const 5)) (i32.const 495324823))

;; i32.wast:236
(assert_return (invoke  "rotr" (i32.const 32768) (i32.const 37)) (i32.const 1024))

;; i32.wast:237
(assert_return (invoke  "rotr" (i32.const 2965492451) (i32.const 65285)) (i32.const 495324823))

;; i32.wast:238
(assert_return (invoke  "rotr" (i32.const 1989852383) (i32.const 4294967277)) (i32.const 3875255509))

;; i32.wast:239
(assert_return (invoke  "rotr" (i32.const 1989852383) (i32.const 2147483661)) (i32.const 3875255509))

;; i32.wast:240
(assert_return (invoke  "rotr" (i32.const 1) (i32.const 31)) (i32.const 2))

;; i32.wast:241
(assert_return (invoke  "rotr" (i32.const 2147483648) (i32.const 31)) (i32.const 1))

;; i32.wast:243
(assert_return (invoke  "clz" (i32.const 4294967295)) (i32.const 0))

;; i32.wast:244
(assert_return (invoke  "clz" (i32.const 0)) (i32.const 32))

;; i32.wast:245
(assert_return (invoke  "clz" (i32.const 32768)) (i32.const 16))

;; i32.wast:246
(assert_return (invoke  "clz" (i32.const 255)) (i32.const 24))

;; i32.wast:247
(assert_return (invoke  "clz" (i32.const 2147483648)) (i32.const 0))

;; i32.wast:248
(assert_return (invoke  "clz" (i32.const 1)) (i32.const 31))

;; i32.wast:249
(assert_return (invoke  "clz" (i32.const 2)) (i32.const 30))

;; i32.wast:250
(assert_return (invoke  "clz" (i32.const 2147483647)) (i32.const 1))

;; i32.wast:252
(assert_return (invoke  "ctz" (i32.const 4294967295)) (i32.const 0))

;; i32.wast:253
(assert_return (invoke  "ctz" (i32.const 0)) (i32.const 32))

;; i32.wast:254
(assert_return (invoke  "ctz" (i32.const 32768)) (i32.const 15))

;; i32.wast:255
(assert_return (invoke  "ctz" (i32.const 65536)) (i32.const 16))

;; i32.wast:256
(assert_return (invoke  "ctz" (i32.const 2147483648)) (i32.const 31))

;; i32.wast:257
(assert_return (invoke  "ctz" (i32.const 2147483647)) (i32.const 0))

;; i32.wast:259
(assert_return (invoke  "popcnt" (i32.const 4294967295)) (i32.const 32))

;; i32.wast:260
(assert_return (invoke  "popcnt" (i32.const 0)) (i32.const 0))

;; i32.wast:261
(assert_return (invoke  "popcnt" (i32.const 32768)) (i32.const 1))

;; i32.wast:262
(assert_return (invoke  "popcnt" (i32.const 2147516416)) (i32.const 2))

;; i32.wast:263
(assert_return (invoke  "popcnt" (i32.const 2147483647)) (i32.const 31))

;; i32.wast:264
(assert_return (invoke  "popcnt" (i32.const 2863311530)) (i32.const 16))

;; i32.wast:265
(assert_return (invoke  "popcnt" (i32.const 1431655765)) (i32.const 16))

;; i32.wast:266
(assert_return (invoke  "popcnt" (i32.const 3735928559)) (i32.const 24))

;; i32.wast:268
(assert_return (invoke  "eqz" (i32.const 0)) (i32.const 1))

;; i32.wast:269
(assert_return (invoke  "eqz" (i32.const 1)) (i32.const 0))

;; i32.wast:270
(assert_return (invoke  "eqz" (i32.const 2147483648)) (i32.const 0))

;; i32.wast:271
(assert_return (invoke  "eqz" (i32.const 2147483647)) (i32.const 0))

;; i32.wast:272
(assert_return (invoke  "eqz" (i32.const 4294967295)) (i32.const 0))

;; i32.wast:274
(assert_return (invoke  "eq" (i32.const 0) (i32.const 0)) (i32.const 1))

;; i32.wast:275
(assert_return (invoke  "eq" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:276
(assert_return (invoke  "eq" (i32.const 4294967295) (i32.const 1)) (i32.const 0))

;; i32.wast:277
(assert_return (invoke  "eq" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:278
(assert_return (invoke  "eq" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:279
(assert_return (invoke  "eq" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:280
(assert_return (invoke  "eq" (i32.const 1) (i32.const 0)) (i32.const 0))

;; i32.wast:281
(assert_return (invoke  "eq" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:282
(assert_return (invoke  "eq" (i32.const 2147483648) (i32.const 0)) (i32.const 0))

;; i32.wast:283
(assert_return (invoke  "eq" (i32.const 0) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:284
(assert_return (invoke  "eq" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:285
(assert_return (invoke  "eq" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:286
(assert_return (invoke  "eq" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:287
(assert_return (invoke  "eq" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:289
(assert_return (invoke  "ne" (i32.const 0) (i32.const 0)) (i32.const 0))

;; i32.wast:290
(assert_return (invoke  "ne" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:291
(assert_return (invoke  "ne" (i32.const 4294967295) (i32.const 1)) (i32.const 1))

;; i32.wast:292
(assert_return (invoke  "ne" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:293
(assert_return (invoke  "ne" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:294
(assert_return (invoke  "ne" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:295
(assert_return (invoke  "ne" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:296
(assert_return (invoke  "ne" (i32.const 0) (i32.const 1)) (i32.const 1))

;; i32.wast:297
(assert_return (invoke  "ne" (i32.const 2147483648) (i32.const 0)) (i32.const 1))

;; i32.wast:298
(assert_return (invoke  "ne" (i32.const 0) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:299
(assert_return (invoke  "ne" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:300
(assert_return (invoke  "ne" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:301
(assert_return (invoke  "ne" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:302
(assert_return (invoke  "ne" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:304
(assert_return (invoke  "lt_s" (i32.const 0) (i32.const 0)) (i32.const 0))

;; i32.wast:305
(assert_return (invoke  "lt_s" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:306
(assert_return (invoke  "lt_s" (i32.const 4294967295) (i32.const 1)) (i32.const 1))

;; i32.wast:307
(assert_return (invoke  "lt_s" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:308
(assert_return (invoke  "lt_s" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:309
(assert_return (invoke  "lt_s" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:310
(assert_return (invoke  "lt_s" (i32.const 1) (i32.const 0)) (i32.const 0))

;; i32.wast:311
(assert_return (invoke  "lt_s" (i32.const 0) (i32.const 1)) (i32.const 1))

;; i32.wast:312
(assert_return (invoke  "lt_s" (i32.const 2147483648) (i32.const 0)) (i32.const 1))

;; i32.wast:313
(assert_return (invoke  "lt_s" (i32.const 0) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:314
(assert_return (invoke  "lt_s" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:315
(assert_return (invoke  "lt_s" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:316
(assert_return (invoke  "lt_s" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:317
(assert_return (invoke  "lt_s" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:319
(assert_return (invoke  "lt_u" (i32.const 0) (i32.const 0)) (i32.const 0))

;; i32.wast:320
(assert_return (invoke  "lt_u" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:321
(assert_return (invoke  "lt_u" (i32.const 4294967295) (i32.const 1)) (i32.const 0))

;; i32.wast:322
(assert_return (invoke  "lt_u" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:323
(assert_return (invoke  "lt_u" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:324
(assert_return (invoke  "lt_u" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:325
(assert_return (invoke  "lt_u" (i32.const 1) (i32.const 0)) (i32.const 0))

;; i32.wast:326
(assert_return (invoke  "lt_u" (i32.const 0) (i32.const 1)) (i32.const 1))

;; i32.wast:327
(assert_return (invoke  "lt_u" (i32.const 2147483648) (i32.const 0)) (i32.const 0))

;; i32.wast:328
(assert_return (invoke  "lt_u" (i32.const 0) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:329
(assert_return (invoke  "lt_u" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:330
(assert_return (invoke  "lt_u" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:331
(assert_return (invoke  "lt_u" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:332
(assert_return (invoke  "lt_u" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:334
(assert_return (invoke  "le_s" (i32.const 0) (i32.const 0)) (i32.const 1))

;; i32.wast:335
(assert_return (invoke  "le_s" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:336
(assert_return (invoke  "le_s" (i32.const 4294967295) (i32.const 1)) (i32.const 1))

;; i32.wast:337
(assert_return (invoke  "le_s" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:338
(assert_return (invoke  "le_s" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:339
(assert_return (invoke  "le_s" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:340
(assert_return (invoke  "le_s" (i32.const 1) (i32.const 0)) (i32.const 0))

;; i32.wast:341
(assert_return (invoke  "le_s" (i32.const 0) (i32.const 1)) (i32.const 1))

;; i32.wast:342
(assert_return (invoke  "le_s" (i32.const 2147483648) (i32.const 0)) (i32.const 1))

;; i32.wast:343
(assert_return (invoke  "le_s" (i32.const 0) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:344
(assert_return (invoke  "le_s" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:345
(assert_return (invoke  "le_s" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:346
(assert_return (invoke  "le_s" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:347
(assert_return (invoke  "le_s" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:349
(assert_return (invoke  "le_u" (i32.const 0) (i32.const 0)) (i32.const 1))

;; i32.wast:350
(assert_return (invoke  "le_u" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:351
(assert_return (invoke  "le_u" (i32.const 4294967295) (i32.const 1)) (i32.const 0))

;; i32.wast:352
(assert_return (invoke  "le_u" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:353
(assert_return (invoke  "le_u" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:354
(assert_return (invoke  "le_u" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:355
(assert_return (invoke  "le_u" (i32.const 1) (i32.const 0)) (i32.const 0))

;; i32.wast:356
(assert_return (invoke  "le_u" (i32.const 0) (i32.const 1)) (i32.const 1))

;; i32.wast:357
(assert_return (invoke  "le_u" (i32.const 2147483648) (i32.const 0)) (i32.const 0))

;; i32.wast:358
(assert_return (invoke  "le_u" (i32.const 0) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:359
(assert_return (invoke  "le_u" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:360
(assert_return (invoke  "le_u" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:361
(assert_return (invoke  "le_u" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:362
(assert_return (invoke  "le_u" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:364
(assert_return (invoke  "gt_s" (i32.const 0) (i32.const 0)) (i32.const 0))

;; i32.wast:365
(assert_return (invoke  "gt_s" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:366
(assert_return (invoke  "gt_s" (i32.const 4294967295) (i32.const 1)) (i32.const 0))

;; i32.wast:367
(assert_return (invoke  "gt_s" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:368
(assert_return (invoke  "gt_s" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:369
(assert_return (invoke  "gt_s" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:370
(assert_return (invoke  "gt_s" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:371
(assert_return (invoke  "gt_s" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:372
(assert_return (invoke  "gt_s" (i32.const 2147483648) (i32.const 0)) (i32.const 0))

;; i32.wast:373
(assert_return (invoke  "gt_s" (i32.const 0) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:374
(assert_return (invoke  "gt_s" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:375
(assert_return (invoke  "gt_s" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:376
(assert_return (invoke  "gt_s" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:377
(assert_return (invoke  "gt_s" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:379
(assert_return (invoke  "gt_u" (i32.const 0) (i32.const 0)) (i32.const 0))

;; i32.wast:380
(assert_return (invoke  "gt_u" (i32.const 1) (i32.const 1)) (i32.const 0))

;; i32.wast:381
(assert_return (invoke  "gt_u" (i32.const 4294967295) (i32.const 1)) (i32.const 1))

;; i32.wast:382
(assert_return (invoke  "gt_u" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:383
(assert_return (invoke  "gt_u" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:384
(assert_return (invoke  "gt_u" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:385
(assert_return (invoke  "gt_u" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:386
(assert_return (invoke  "gt_u" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:387
(assert_return (invoke  "gt_u" (i32.const 2147483648) (i32.const 0)) (i32.const 1))

;; i32.wast:388
(assert_return (invoke  "gt_u" (i32.const 0) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:389
(assert_return (invoke  "gt_u" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:390
(assert_return (invoke  "gt_u" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:391
(assert_return (invoke  "gt_u" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:392
(assert_return (invoke  "gt_u" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:394
(assert_return (invoke  "ge_s" (i32.const 0) (i32.const 0)) (i32.const 1))

;; i32.wast:395
(assert_return (invoke  "ge_s" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:396
(assert_return (invoke  "ge_s" (i32.const 4294967295) (i32.const 1)) (i32.const 0))

;; i32.wast:397
(assert_return (invoke  "ge_s" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:398
(assert_return (invoke  "ge_s" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:399
(assert_return (invoke  "ge_s" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:400
(assert_return (invoke  "ge_s" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:401
(assert_return (invoke  "ge_s" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:402
(assert_return (invoke  "ge_s" (i32.const 2147483648) (i32.const 0)) (i32.const 0))

;; i32.wast:403
(assert_return (invoke  "ge_s" (i32.const 0) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:404
(assert_return (invoke  "ge_s" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:405
(assert_return (invoke  "ge_s" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:406
(assert_return (invoke  "ge_s" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 0))

;; i32.wast:407
(assert_return (invoke  "ge_s" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:409
(assert_return (invoke  "ge_u" (i32.const 0) (i32.const 0)) (i32.const 1))

;; i32.wast:410
(assert_return (invoke  "ge_u" (i32.const 1) (i32.const 1)) (i32.const 1))

;; i32.wast:411
(assert_return (invoke  "ge_u" (i32.const 4294967295) (i32.const 1)) (i32.const 1))

;; i32.wast:412
(assert_return (invoke  "ge_u" (i32.const 2147483648) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:413
(assert_return (invoke  "ge_u" (i32.const 2147483647) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:414
(assert_return (invoke  "ge_u" (i32.const 4294967295) (i32.const 4294967295)) (i32.const 1))

;; i32.wast:415
(assert_return (invoke  "ge_u" (i32.const 1) (i32.const 0)) (i32.const 1))

;; i32.wast:416
(assert_return (invoke  "ge_u" (i32.const 0) (i32.const 1)) (i32.const 0))

;; i32.wast:417
(assert_return (invoke  "ge_u" (i32.const 2147483648) (i32.const 0)) (i32.const 1))

;; i32.wast:418
(assert_return (invoke  "ge_u" (i32.const 0) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:419
(assert_return (invoke  "ge_u" (i32.const 2147483648) (i32.const 4294967295)) (i32.const 0))

;; i32.wast:420
(assert_return (invoke  "ge_u" (i32.const 4294967295) (i32.const 2147483648)) (i32.const 1))

;; i32.wast:421
(assert_return (invoke  "ge_u" (i32.const 2147483648) (i32.const 2147483647)) (i32.const 1))

;; i32.wast:422
(assert_return (invoke  "ge_u" (i32.const 2147483647) (i32.const 2147483648)) (i32.const 0))

;; i32.wast:426
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\06\01\04\00\45\1a\0b") "type mismatch")

;; i32.wast:434
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0b\01\09\00\41\00\02\40\45\1a\0b\0b") "type mismatch")

;; i32.wast:443
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0b\01\09\00\41\00\03\40\45\1a\0b\0b") "type mismatch")

;; i32.wast:452
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0d\01\0b\00\41\00\41\00\04\40\45\1a\0b\0b") "type mismatch")

;; i32.wast:461
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\10\01\0e\00\41\00\41\00\04\7f\41\00\05\45\0b\1a\0b") "type mismatch")

;; i32.wast:470
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0d\01\0b\00\41\00\02\40\45\0c\00\1a\0b\0b") "type mismatch")

;; i32.wast:479
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0f\01\0d\00\41\00\02\40\45\41\01\0d\00\1a\0b\0b") "type mismatch")

;; i32.wast:488
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0e\01\0c\00\41\00\02\40\45\0e\00\00\1a\0b\0b") "type mismatch")

;; i32.wast:497
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\07\01\05\00\45\0f\1a\0b") "type mismatch")

;; i32.wast:505
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0b\01\09\00\45\41\01\41\02\1b\1a\0b") "type mismatch")

;; i32.wast:513
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\09\02\60\00\00\60\01\7f\01\7f\03\03\02\00\01\0a\0d\02\06\00\45\10\01\1a\0b\04\00\20\00\0b") "type mismatch")

;; i32.wast:522
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\09\02\60\01\7f\01\7f\60\00\00\03\03\02\00\01\04\05\01\70\01\01\01\09\07\01\00\41\00\0b\01\00\0a\13\02\04\00\20\00\0b\0c\00\02\7f\45\41\00\11\00\00\1a\0b\0b") "type mismatch")

;; i32.wast:538
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0c\01\0a\01\01\7f\45\21\00\20\00\1a\0b") "type mismatch")

;; i32.wast:547
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0a\01\08\01\01\7f\45\22\00\1a\0b") "type mismatch")

;; i32.wast:556
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\06\06\01\7f\01\41\00\0b\0a\0a\01\08\00\45\24\00\23\00\1a\0b") "type mismatch")

;; i32.wast:565
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\00\0a\08\01\06\00\45\40\00\1a\0b") "type mismatch")

;; i32.wast:574
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\00\0a\09\01\07\00\45\28\02\00\1a\0b") "type mismatch")

;; i32.wast:583
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\01\0a\0a\01\08\00\45\41\01\36\02\00\0b") "type mismatch")

;; i32.wast:593
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\06\01\04\00\6a\1a\0b") "type mismatch")

;; i32.wast:601
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\08\01\06\00\41\00\6a\1a\0b") "type mismatch")

;; i32.wast:609
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0d\01\0b\00\41\00\41\00\02\40\6a\1a\0b\0b") "type mismatch")

;; i32.wast:618
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0d\01\0b\00\41\00\02\40\41\00\6a\1a\0b\0b") "type mismatch")

;; i32.wast:627
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0d\01\0b\00\41\00\41\00\03\40\6a\1a\0b\0b") "type mismatch")

;; i32.wast:636
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0d\01\0b\00\41\00\03\40\41\00\6a\1a\0b\0b") "type mismatch")

;; i32.wast:645
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0f\01\0d\00\41\00\41\00\41\00\6a\04\40\1a\0b\0b") "type mismatch")

;; i32.wast:654
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\10\01\0e\00\41\00\41\00\41\00\04\40\6a\05\1a\0b\0b") "type mismatch")

;; i32.wast:663
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\15\01\13\00\41\00\41\00\41\00\04\7f\41\00\05\6a\41\00\0b\1a\1a\0b") "type mismatch")

;; i32.wast:673
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\10\01\0e\00\41\00\41\00\04\7f\41\00\05\6a\0b\1a\0b") "type mismatch")

;; i32.wast:683
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0f\01\0d\00\41\00\41\00\02\40\6a\0c\00\1a\0b\0b") "type mismatch")

;; i32.wast:692
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0f\01\0d\00\41\00\02\40\41\00\6a\0c\00\1a\0b\0b") "type mismatch")

;; i32.wast:701
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\11\01\0f\00\41\00\41\00\02\40\6a\41\01\0d\00\1a\0b\0b") "type mismatch")

;; i32.wast:710
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\11\01\0f\00\41\00\02\40\41\00\6a\41\01\0d\00\1a\0b\0b") "type mismatch")

;; i32.wast:719
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\10\01\0e\00\41\00\41\00\02\40\6a\0e\00\00\1a\0b\0b") "type mismatch")

;; i32.wast:728
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\10\01\0e\00\41\00\02\40\41\00\6a\0e\00\00\1a\0b\0b") "type mismatch")

;; i32.wast:737
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\07\01\05\00\6a\0f\1a\0b") "type mismatch")

;; i32.wast:745
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\09\01\07\00\41\00\6a\0f\1a\0b") "type mismatch")

;; i32.wast:753
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0b\01\09\00\6a\41\01\41\02\1b\1a\0b") "type mismatch")

;; i32.wast:761
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0d\01\0b\00\41\00\6a\41\01\41\02\1b\1a\0b") "type mismatch")

;; i32.wast:769
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\0a\02\60\00\00\60\02\7f\7f\01\7f\03\03\02\00\01\0a\0d\02\06\00\6a\10\01\1a\0b\04\00\20\00\0b") "type mismatch")

;; i32.wast:778
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\0a\02\60\00\00\60\02\7f\7f\01\7f\03\03\02\00\01\0a\0f\02\08\00\41\00\6a\10\01\1a\0b\04\00\20\00\0b") "type mismatch")

;; i32.wast:787
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\09\02\60\01\7f\01\7f\60\00\00\03\03\02\00\01\04\05\01\70\01\01\01\09\07\01\00\41\00\0b\01\00\0a\13\02\04\00\20\00\0b\0c\00\02\7f\6a\41\00\11\00\00\1a\0b\0b") "type mismatch")

;; i32.wast:803
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\09\02\60\01\7f\01\7f\60\00\00\03\03\02\00\01\04\05\01\70\01\01\01\09\07\01\00\41\00\0b\01\00\0a\15\02\04\00\20\00\0b\0e\00\02\7f\41\00\6a\41\00\11\00\00\1a\0b\0b") "type mismatch")

;; i32.wast:819
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0c\01\0a\01\01\7f\6a\21\00\20\00\1a\0b") "type mismatch")

;; i32.wast:828
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0e\01\0c\01\01\7f\41\00\6a\21\00\20\00\1a\0b") "type mismatch")

;; i32.wast:837
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0a\01\08\01\01\7f\6a\22\00\1a\0b") "type mismatch")

;; i32.wast:846
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\0a\0c\01\0a\01\01\7f\41\00\6a\22\00\1a\0b") "type mismatch")

;; i32.wast:855
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\06\06\01\7f\01\41\00\0b\0a\0a\01\08\00\6a\24\00\23\00\1a\0b") "type mismatch")

;; i32.wast:864
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\06\06\01\7f\01\41\00\0b\0a\0c\01\0a\00\41\00\6a\24\00\23\00\1a\0b") "type mismatch")

;; i32.wast:873
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\00\0a\08\01\06\00\6a\40\00\1a\0b") "type mismatch")

;; i32.wast:882
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\00\0a\0a\01\08\00\41\00\6a\40\00\1a\0b") "type mismatch")

;; i32.wast:891
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\00\0a\09\01\07\00\6a\28\02\00\1a\0b") "type mismatch")

;; i32.wast:900
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\00\0a\0b\01\09\00\41\00\6a\28\02\00\1a\0b") "type mismatch")

;; i32.wast:909
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\01\0a\0a\01\08\00\6a\41\01\36\02\00\0b") "type mismatch")

;; i32.wast:918
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\04\01\60\00\00\03\02\01\00\05\03\01\00\01\0a\0c\01\0a\00\41\01\6a\41\00\36\02\00\0b") "type mismatch")

;; i32.wast:930
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\6a\0b") "type mismatch")

;; i32.wast:931
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\71\0b") "type mismatch")

;; i32.wast:932
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\6d\0b") "type mismatch")

;; i32.wast:933
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\6e\0b") "type mismatch")

;; i32.wast:934
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\6c\0b") "type mismatch")

;; i32.wast:935
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\72\0b") "type mismatch")

;; i32.wast:936
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\6f\0b") "type mismatch")

;; i32.wast:937
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\70\0b") "type mismatch")

;; i32.wast:938
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\77\0b") "type mismatch")

;; i32.wast:939
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\78\0b") "type mismatch")

;; i32.wast:940
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\74\0b") "type mismatch")

;; i32.wast:941
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\75\0b") "type mismatch")

;; i32.wast:942
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\76\0b") "type mismatch")

;; i32.wast:943
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\6b\0b") "type mismatch")

;; i32.wast:944
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\73\0b") "type mismatch")

;; i32.wast:945
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\07\01\05\00\42\00\45\0b") "type mismatch")

;; i32.wast:946
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\07\01\05\00\42\00\67\0b") "type mismatch")

;; i32.wast:947
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\07\01\05\00\42\00\68\0b") "type mismatch")

;; i32.wast:948
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\07\01\05\00\42\00\69\0b") "type mismatch")

;; i32.wast:949
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\46\0b") "type mismatch")

;; i32.wast:950
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\4e\0b") "type mismatch")

;; i32.wast:951
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\4f\0b") "type mismatch")

;; i32.wast:952
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\4a\0b") "type mismatch")

;; i32.wast:953
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\4b\0b") "type mismatch")

;; i32.wast:954
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\4c\0b") "type mismatch")

;; i32.wast:955
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\4d\0b") "type mismatch")

;; i32.wast:956
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\48\0b") "type mismatch")

;; i32.wast:957
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\49\0b") "type mismatch")

;; i32.wast:958
(assert_invalid (module binary "\00\61\73\6d\01\00\00\00\01\05\01\60\00\01\7f\03\02\01\00\0a\0c\01\0a\00\42\00\43\00\00\00\00\47\0b") "type mismatch")

