;; br_table with exactly 2 entries (1 explicit label + the default). read_labels().length == 2,
;; so this has the same out-degree as a br_if -- the probe must be a TableProbe (dispatch on the
;; index operand, clamped) and NOT a BoolProbe (dispatch on truthiness). No other test covers
;; the 2-edge br_table shape.
;;
;; Paths: A = index 0 -> $L0 -> return 10 ; B = index >= 1 -> $L1 (default) -> 20
;; main: x=0 twice (A), x=1 three times (B), x=7 once (B, clamped)
;; expected counts: {A=2, B=4}, sum = 6 = calls to $f
(module
  (func $f (export "f") (param $x i32) (result i32)
    (block $L1
      (block $L0
        (br_table $L0 $L1 (local.get $x))
      )
      (return (i32.const 10))
    )
    (i32.const 20))
  (func (export "main")
    (drop (call $f (i32.const 0)))
    (drop (call $f (i32.const 0)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 7))))
)
