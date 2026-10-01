;; The four kinds of path through a loop (Section 4): entry to exit, entry to backedge, backedge
;; to backedge, and backedge to exit.
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
