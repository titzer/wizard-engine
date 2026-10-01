;; Two DISTINCT backedges to the SAME loop header. `loop_types` produces its type-3 segments from a
;; single backedge taken repeatedly; here the segment that ends at a backedge can end at either of
;; two different edges, so type 3 is split across them and each must be told apart.
;;
;; Section 4 step 1 adds dummies per VERTEX, not per backedge -- "for each vertex v that is the
;; target of one or more backedges, add a dummy edge ENTRY -> v" -- so $top gets ONE incoming
;; ENTRY->$top dummy however many backedges arrive, while the two branch sources, being distinct
;; vertices, each get their own ->EXIT dummy. That asymmetry is what this pins: the two backedges
;; must still be told apart even though they share a reinitialization constant.
;;
;; $two increments $i each iteration and takes backedge A when $i is even, backedge B when it is odd.
;;   n=0 -> the guard fails immediately: type 1 alone, no backedge.
;;   n=5 -> $i runs 1..5, so B fires on 1,3,5 and A on 2,4.
;; main calls $two(0) once and $two(5) once.
;; INVARIANT: sum(counts) == activations + backedge executions == 2 + 5 == 7.
(module
  (func $two (export "two") (param $n i32) (result i32)
    (local $i i32)
    (block $exit
      (loop $top
        (br_if $exit (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        ;; backedge A, taken on even $i
        (if (i32.eqz (i32.rem_u (local.get $i) (i32.const 2)))
          (then (br $top)))
        ;; backedge B, taken on odd $i
        (br $top)))
    (local.get $i))
  (func (export "main")
    (drop (call $two (i32.const 0)))
    (drop (call $two (i32.const 5))))
)
