;; BUG (ControlStack.setUnreachable -> CfgBuilder.gotoExit): a block ending in `unreachable` (or
;; throw / rethrow / throw_ref) is linked straight to EXIT, so an execution that TRAPS is recorded
;; as a completed path.
;;
;; setUnreachable now calls endBlock(this, block), which CfgBuilder binds to gotoExit; gotoExit
;; links any block with no outgoing edge to EXIT. For a trapping block that edge is a fiction --
;; control never reaches EXIT from there. The block's EdgeProbe sits on the `unreachable`
;; instruction and fires just BEFORE the trap, so the count is committed anyway.
;;
;; $f(1) takes the `unreachable` arm and traps. It never returns.
;; EXPECTED: no completed path recorded; sum(counts) == 0 (no activation completed).
;; ACTUAL:   counts[1] = 1  with  path: 100 103 101   -- block 103 is the `unreachable` block and
;;           it has an edge to EXIT (101). A trapped run is counted as a finished path.
;;
;; INVARIANT VIOLATED: sum(counts) == activations, in the "too many" direction. The same fiction
;; applies to throw / rethrow / throw_ref, which route to a handler rather than to EXIT.
(module
  (func $f (export "f") (param $x i32) (result i32)
    (if (local.get $x) (then (unreachable)))
    (i32.const 7))
  (func (export "main")
    (drop (call $f (i32.const 1))))
)
