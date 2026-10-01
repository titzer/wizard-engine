;; br_table with a single entry: the label list is just the default, so the block has ONE
;; outgoing edge and no runtime decision at all. Pins that a degenerate br_table is treated as
;; an unconditional branch (single-path function), not as a 0- or 2-way dispatch.
;;
;; Paths: 1. main calls $f 3 times with unrelated indices; all take it.
;; expected counts: {0 => 3}, sum = 3 = calls to $f
(module
  (func $f (export "f") (param $x i32) (result i32)
    (block $L0
      (br_table $L0 (local.get $x))
    )
    (i32.const 1))
  (func (export "main")
    (drop (call $f (i32.const 0)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 99))))
)
