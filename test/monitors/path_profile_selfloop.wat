;; SELF-LOOPS: a backedge whose source and target are the same block (Ball-Larus Section 4).
;; A `loop` whose body has no internal branching collapses the header and the branch into one
;; block, so `br_if $L` becomes an edge from that block to itself. Section 4 handles these with a
;; plain iteration counter instead of [count[r]++; r=0], because removing the edge leaves no edge
;; inside the loop to carry a path value.
;;
;; func #0 $count_down: self-loop, called once with n=3 -> n goes 3,2,1 so the br_if is taken
;;                      twice. The self-loop counter must read 2, and the PATH count must be 1 --
;;                      iterating a self-loop does not change which path ran, so the trip count
;;                      must not leak into counts[].
;; func #1 $with_if   : the same loop with an `if` in the body, which splits the block, so this is
;;                      an ORDINARY backedge (w != v) and is path-profiled normally. Called with
;;                      n=3: body runs 3 times, so the backedge is taken twice (the last iteration
;;                      falls out) -> 1 + 2 == 3 segments.
;; func #2 $forever   : unconditional self-branch, so the block's ONLY outgoing edge is the
;;                      self-loop and EXIT is unreachable -- the function never returns. It must
;;                      report NO path slots at all (a path that never reaches EXIT does not
;;                      exist), and only its self-loop counter. Never called -- it only has to be
;;                      analyzable. This is the case that pins both the EXIT vertex needing a
;;                      disjoint set of its own and Fig. 5's leaf test being `v == EXIT`.
;; func #3 main       : straight-line, 1 path.
(module
  (func $count_down (export "count_down") (param $n i32) (result i32)
    (loop $L
      (local.set $n (i32.sub (local.get $n) (i32.const 1)))
      (br_if $L (local.get $n)))
    (local.get $n))
  (func $with_if (export "with_if") (param $n i32) (result i32)
    (loop $L
      (local.set $n (i32.sub (local.get $n) (i32.const 1)))
      (if (i32.rem_s (local.get $n) (i32.const 2)) (then (nop)))
      (br_if $L (local.get $n)))
    (local.get $n))
  (func $forever (export "forever") (loop $L (br $L)))
  (func (export "main")
    (drop (call $count_down (i32.const 3)))
    (drop (call $with_if (i32.const 3))))
)
