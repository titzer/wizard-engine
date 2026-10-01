;; Frequency accuracy: does counts[k] actually equal the number of times path k ran?
;; The rest of the suite only pins down that the numbering is a bijection (many_paths runs each of
;; 32 paths ONCE, so every counter reads 1) and that sum(counts) == activations. Both of those still
;; pass if every count lands in the wrong bucket, so neither tests the profiler's actual job.
;;
;; $f is five sequential diamonds selected by the five low bits of $x, so path number is a pure
;; function of $x. main calls $f(x) exactly (x+1) times for x in 0..31, giving all 32 paths DISTINCT
;; frequencies 1..32 -- no two counters can be confused, and 528 calls total.
;;
;; Ball-Larus numbering makes the FIRST diamond carry the largest stride (NumPaths of the rest = 16),
;; so the path number is the 5-bit reversal of $x:  x=1 -> 16, x=2 -> 8, x=4 -> 4, x=8 -> 2, x=16 -> 1.
;; Hand-derived expectation:  counts[bitreverse5(x)] == x+1  for every x in 0..31, summing to 528.
;; main itself contains loops, so the monitor skips it and only $f is reported.
(module
  (func $f (export "f") (param $x i32) (result i32) (local $r i32)
    (if (i32.and (local.get $x) (i32.const 1))
      (then (local.set $r (i32.add (local.get $r) (i32.const 1))))
      (else (local.set $r (local.get $r))))
    (if (i32.and (local.get $x) (i32.const 2))
      (then (local.set $r (i32.add (local.get $r) (i32.const 2))))
      (else (local.set $r (local.get $r))))
    (if (i32.and (local.get $x) (i32.const 4))
      (then (local.set $r (i32.add (local.get $r) (i32.const 4))))
      (else (local.set $r (local.get $r))))
    (if (i32.and (local.get $x) (i32.const 8))
      (then (local.set $r (i32.add (local.get $r) (i32.const 8))))
      (else (local.set $r (local.get $r))))
    (if (i32.and (local.get $x) (i32.const 16))
      (then (local.set $r (i32.add (local.get $r) (i32.const 16))))
      (else (local.set $r (local.get $r))))
    (local.get $r))
  (func (export "main") (result i32) (local $x i32) (local $j i32) (local $acc i32)
    (block $ox (loop $lx
      (br_if $ox (i32.ge_s (local.get $x) (i32.const 32)))
      (local.set $j (i32.const 0))
      (block $oj (loop $lj
        (br_if $oj (i32.gt_s (local.get $j) (local.get $x)))
        (local.set $acc (i32.add (local.get $acc) (call $f (local.get $x))))
        (local.set $j (i32.add (local.get $j) (i32.const 1)))
        (br $lj)))
      (local.set $x (i32.add (local.get $x) (i32.const 1)))
      (br $lx)))
    (local.get $acc)))
