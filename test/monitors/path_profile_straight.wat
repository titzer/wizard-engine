;; Straight-line functions with no decision at all. The single-path case is the base case of
;; the whole scheme: counts[0] must equal the activation count exactly, and there must be
;; exactly one counter.
;;
;; $add1  : pure arithmetic, called 5 times (3 from main + 1 per $calls) -> counts[0] = 5
;; $nops  : nothing but nop/drop, called 4 times (2 from main + 1 per $calls) -> counts[0] = 4
;; $calls : straight line containing calls (calls are not control flow for this analysis),
;;          called twice -> counts[0] = 2
;; main itself is straight-line -> counts[0] = 1
(module
  (func $add1 (export "add1") (param $x i32) (result i32)
    (i32.add (local.get $x) (i32.const 1)))
  (func $nops (export "nops") (result i32)
    (nop) (drop (i32.const 3)) (nop)
    (i32.const 0))
  (func $calls (export "calls") (param $x i32) (result i32)
    (i32.add (call $add1 (local.get $x)) (call $nops)))
  (func (export "main")
    (drop (call $add1 (i32.const 1)))
    (drop (call $add1 (i32.const 2)))
    (drop (call $add1 (i32.const 3)))
    (drop (call $nops))
    (drop (call $nops))
    (drop (call $calls (i32.const 4)))
    (drop (call $calls (i32.const 5))))
)
