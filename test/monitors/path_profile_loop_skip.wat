;; Loops are PROFILED, not skipped (Ball-Larus Section 4). This file predates that and originally
;; pinned the opposite -- that a function containing a backedge produced no output at all. It is
;; kept because its shapes are still the useful ones, and because it pins that a `loop` label
;; nothing branches to is NOT a cycle.
;;
;; func #0 $loop_sum(4)      : one loop, body runs 4 times -> 4 backedges. 1 + 4 == 5 segments.
;; func #1 $nested_loop(3)   : loop inside a loop -> two independent backedges, two loop headers,
;;                             so step 1 adds a dummy pair for each.
;; func #2 $loop_no_backedge : a `loop` label nothing ever branches to. NOT a backedge, so this is
;;                             an ordinary acyclic function: 1 path, called twice -> counts[0] == 2.
;;                             This is the case a positional (bind_pos) backedge guess gets wrong;
;;                             marking from ControlStack's `to.isLoop()` gets it right.
;; func #3 $acyclic          : plain diamond, 2 paths, each taken once.
;; func #4 main              : 1 path.
;; INVARIANT: per function, sum(counts) == activations + backedge executions.
(module
  (func $loop_sum (export "loop_sum") (param $n i32) (result i32)
    (local $i i32) (local $s i32)
    (block $exit
      (loop $top
        (br_if $exit (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $s (i32.add (local.get $s) (local.get $i)))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $top)
      )
    )
    (local.get $s))
  (func $nested_loop (export "nested_loop") (param $n i32) (result i32)
    (local $i i32) (local $j i32) (local $s i32)
    (block $ei
      (loop $oi
        (br_if $ei (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $j (i32.const 0))
        (block $ej
          (loop $oj
            (br_if $ej (i32.ge_s (local.get $j) (local.get $n)))
            (local.set $s (i32.add (local.get $s) (i32.const 1)))
            (local.set $j (i32.add (local.get $j) (i32.const 1)))
            (br $oj)
          )
        )
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $oi)
      )
    )
    (local.get $s))
  (func $loop_no_backedge (export "loop_no_backedge") (result i32)
    (loop $l (nop))
    (i32.const 7))
  (func $acyclic (export "acyclic") (param $x i32) (result i32)
    (if (result i32) (local.get $x) (then (i32.const 1)) (else (i32.const 2))))
  (func (export "main")
    (drop (call $loop_sum (i32.const 4)))
    (drop (call $nested_loop (i32.const 3)))
    (drop (call $loop_no_backedge))
    (drop (call $loop_no_backedge))
    (drop (call $acyclic (i32.const 0)))
    (drop (call $acyclic (i32.const 1))))
)
