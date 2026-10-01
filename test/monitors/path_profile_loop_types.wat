;; The four acyclic segment types a general CFG produces (Ball-Larus Section 4). With backedges
;; v->w and x->y, a backedge-free path is one of:
;;   1. ENTRY -> EXIT                                  (no backedge taken at all)
;;   2. ENTRY -> v, ending with backedge v->w          (the first backedge execution)
;;   3. w -> x, ending with backedge x->y              (backedge to backedge; may be the same edge)
;;   4. after v->w, w -> EXIT                          (the last iteration falling out)
;;
;; $trip is one loop whose body runs $n times, so the backedge executes $n times.
;;   n=0 -> the guard fails immediately: type 1 alone, no backedge.
;;   n=k>0 -> type 2 once, type 3 (k-1) times, type 4 once.
;; main calls $trip(0) twice and $trip(5) once, giving  type 1 = 2, type 2 = 1, type 3 = 4,
;; type 4 = 1. Types 1 and 3 have distinct frequencies, so they cannot be swapped undetected.
;; Types 2 and 4 are both 1 and stay that way for any trip count: a loop with a single exit runs
;; exactly one first-backedge and one final-exit per activation that enters it. Distinguishing
;; those two needs a differently shaped loop, not a different trip count.
;; INVARIANT: sum(counts) == activations + backedge executions == 3 + 5 == 8.
(module
  (func $trip (export "trip") (param $n i32) (result i32)
    (local $i i32)
    (block $exit
      (loop $top
        (br_if $exit (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $top)))
    (local.get $i))
  (func (export "main")
    (drop (call $trip (i32.const 0)))
    (drop (call $trip (i32.const 0)))
    (drop (call $trip (i32.const 5))))
)
