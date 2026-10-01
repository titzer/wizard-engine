;; br / br_if targeting OUTER labels (depth > 0), including an unconditional branch out of
;; three nesting levels at once. Every pre-existing br/br_if test targets depth 0 only, and
;; nothing pinned br_if *polarity* on a br_if whose two successors are distinguishable
;; (shapes.wat's br_if has both successors converging immediately).
;;
;; $f: br_if $out escapes two levels, br_if $mid escapes one, else fall all the way out.
;;     P1 x=0  -> br $out, tails skipped, r = 0
;;     P2 x=1  -> br $mid, then the +1 tail, r = 1
;;     P3 else -> r = 100, +10, +1 = 111
;;     3 paths. main: P1 once, P2 twice, P3 three times.
;;     expected counts: a permutation of {1,2,3}, sum = 6 = calls to $f
;; $g: unconditional `br $a` out of three levels; the br_if $b above it keeps the intermediate
;;     tail reachable (so no dead predecessor -- see KNOWN_BUG_dead_pred for the dead variant).
;;     P1 x=0 -> br_if not taken -> br $a -> r = 0
;;     P2 x!=0 -> br $b -> r = 3
;;     2 paths. main: P1 three times, P2 once.
;;     expected counts: a permutation of {3,1}, sum = 4 = calls to $g
(module
  (func $f (export "f") (param $x i32) (result i32)
    (local $r i32)
    (block $out
      (block $mid
        (block $in
          (br_if $out (i32.eqz (local.get $x)))
          (br_if $mid (i32.eq (local.get $x) (i32.const 1)))
          (local.set $r (i32.const 100))
        )
        (local.set $r (i32.add (local.get $r) (i32.const 10)))
      )
      (local.set $r (i32.add (local.get $r) (i32.const 1)))
    )
    (local.get $r))
  (func $g (export "g") (param $x i32) (result i32)
    (local $r i32)
    (block $a
      (block $b
        (block $c
          (br_if $b (local.get $x))
          (br $a)
        )
        (local.set $r (i32.const 2))
      )
      (local.set $r (i32.const 3))
    )
    (local.get $r))
  (func (export "main")
    (drop (call $f (i32.const 0)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 1)))
    (drop (call $f (i32.const 5)))
    (drop (call $f (i32.const 5)))
    (drop (call $f (i32.const 5)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 0)))
    (drop (call $g (i32.const 1))))
)
