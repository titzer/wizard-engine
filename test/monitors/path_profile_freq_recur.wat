;; Frequency accuracy under RECURSION. Complements path_profile_freq.wat (which is non-recursive):
;; this exercises the per-function register save/restore stack at depth, where a wrong r would put
;; a nested activation's count in the caller's bucket.
;;
;; $rec has 5 paths: a base case (n==0) and 4 recursive paths, chosen by bits 0 and 1 of $n.
;; main calls $rec(7), $rec(13), $rec(20), $rec(5) -> 45 recursive activations + 4 base = 49.
;; For each top-level K, path(n%4) runs once for every n in 1..K; the base path runs once per call.
;; Hand-derived: n%4 counts over 1..7, 1..13, 1..20, 1..5 give recursive totals 10/11/13/11 and
;; base 4, summing to 49 = total activations. Max depth 20 exercises a non-trivial register stack.
(module
  ;; base case + 4 recursive paths (two diamonds on bits 0 and 1 of $n)
  (func $rec (export "rec") (param $n i32) (result i32) (local $r i32)
    (if (i32.eqz (local.get $n)) (then (return (i32.const 0))))
    (if (i32.and (local.get $n) (i32.const 1))
      (then (local.set $r (i32.add (local.get $r) (i32.const 1))))
      (else (local.set $r (local.get $r))))
    (if (i32.and (local.get $n) (i32.const 2))
      (then (local.set $r (i32.add (local.get $r) (i32.const 2))))
      (else (local.set $r (local.get $r))))
    (i32.add (local.get $r) (call $rec (i32.sub (local.get $n) (i32.const 1)))))
  (func (export "main")
    (drop (call $rec (i32.const 7)))
    (drop (call $rec (i32.const 13)))
    (drop (call $rec (i32.const 20)))
    (drop (call $rec (i32.const 5)))
  ))
