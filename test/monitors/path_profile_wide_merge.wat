;; A single block with FIVE predecessors. wide_only/demo cover a wide br_table whose arms all
;; `return` (so the fan-in lands on EXIT); here the five arms instead `br` to a common join
;; block that then continues, so the join is a real interior merge with 5 incoming edges.
;;
;; Paths: one per br_table index (0..3 indexed, >=4 default) -> 5 paths.
;; main: index 0 once, 1 twice, 2 three times, 3 four times, 9 five times (default).
;; expected counts: a permutation of {1,2,3,4,5}, sum = 15 = calls to $merge5
(module
  (func $merge5 (export "merge5") (param $x i32) (result i32)
    (local $r i32)
    (block $done
      (block $L4
        (block $L3
          (block $L2
            (block $L1
              (block $L0
                (br_table $L0 $L1 $L2 $L3 $L4 (local.get $x))
              )
              (local.set $r (i32.const 10)) (br $done)
            )
            (local.set $r (i32.const 20)) (br $done)
          )
          (local.set $r (i32.const 30)) (br $done)
        )
        (local.set $r (i32.const 40)) (br $done)
      )
      (local.set $r (i32.const 50))
    )
    (i32.add (local.get $r) (i32.const 1)))
  (func (export "main")
    (drop (call $merge5 (i32.const 0)))
    (drop (call $merge5 (i32.const 1)))
    (drop (call $merge5 (i32.const 1)))
    (drop (call $merge5 (i32.const 2)))
    (drop (call $merge5 (i32.const 2)))
    (drop (call $merge5 (i32.const 2)))
    (drop (call $merge5 (i32.const 3)))
    (drop (call $merge5 (i32.const 3)))
    (drop (call $merge5 (i32.const 3)))
    (drop (call $merge5 (i32.const 3)))
    (drop (call $merge5 (i32.const 9)))
    (drop (call $merge5 (i32.const 9)))
    (drop (call $merge5 (i32.const 9)))
    (drop (call $merge5 (i32.const 9)))
    (drop (call $merge5 (i32.const 9))))
)
