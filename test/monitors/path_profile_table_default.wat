;; br_table where EVERY executed index falls through to the default label, including the
;; out-of-range clamp in TableProbe (v >= dispatch.length -> last entry) and an index whose
;; i32 value is negative (0xffffffff), which must be read as an unsigned u32 and clamped, not
;; used as a negative array index.
;;
;; 3 labels ($L0, $L1, default $L2) -> 3 paths. main only ever passes 2, 3, 100 and -1,
;; so the two indexed paths are never taken.
;; expected counts: one path = 4, the other two = 0; sum = 4 = calls to $f
(module
  (func $f (export "f") (param $x i32) (result i32)
    (block $L2
      (block $L1
        (block $L0
          (br_table $L0 $L1 $L2 (local.get $x))
        )
        (return (i32.const 1))
      )
      (return (i32.const 2))
    )
    (i32.const 3))
  (func (export "main")
    (drop (call $f (i32.const 2)))
    (drop (call $f (i32.const 3)))
    (drop (call $f (i32.const 100)))
    (drop (call $f (i32.const -1))))
)
