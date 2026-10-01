;; Backedges to DIFFERENT headers, one nested inside the other. `loop_two_backedges` pins two
;; backedges sharing a header; this pins the other axis -- each backedge targets its own header, so
;; Section 4 step 1 adds ENTRY->$outer and ENTRY->$inner, and the two branch sources each get their
;; own ->EXIT.
;;
;; The point is that the inner backedge must NOT end a segment that the outer one also ends. Every
;; backedge execution ends exactly one segment, whichever loop it belongs to, so the two trip counts
;; add rather than nest in the invariant below.
;;
;; $nested runs the inner loop $m times per outer iteration, for $n outer iterations.
;; main calls $nested(3, 2) once: the inner backedge executes 3*2 == 6 times and the outer 3 times.
;; INVARIANT: sum(counts) == activations + backedge executions == 1 + (6 + 3) == 10.
(module
  (func $nested (export "nested") (param $n i32) (param $m i32) (result i32)
    (local $i i32) (local $j i32) (local $s i32)
    (block $outer_exit
      (loop $outer
        (br_if $outer_exit (i32.ge_s (local.get $i) (local.get $n)))
        (local.set $j (i32.const 0))
        (block $inner_exit
          (loop $inner
            (br_if $inner_exit (i32.ge_s (local.get $j) (local.get $m)))
            (local.set $s (i32.add (local.get $s) (i32.const 1)))
            (local.set $j (i32.add (local.get $j) (i32.const 1)))
            (br $inner)))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br $outer)))
    (local.get $s))
  (func (export "main")
    (drop (call $nested (i32.const 3) (i32.const 2))))
)
