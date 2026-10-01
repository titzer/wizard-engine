;; BUG: a function containing br_on_cast / br_on_cast_fail silently UNDER-REPORTS its path counts.
;;
;; ControlStack routes the br_on_* family through brIf(), so these are ordinary two-successor
;; decision blocks. placeProbes cannot build a BranchProbe for them -- the outcome is a subtype test
;; between the operand's runtime type and the instruction's immediate, which the probe cannot
;; evaluate from the operand alone -- so it does `continue`.
;;
;; That `continue` runs at placeProbes time, which is AFTER placeInit/placeCount/placeDefault have
;; already called st.instrument() on the block's edges. So the edges carry an Action that no probe
;; ever executes: the instrumentation is DROPPED, not deferred, and the function still appears in
;; the report with numbers that are simply too low.
;;
;; DEMONSTRATED with a module already in the repo, which this wabt cannot assemble from source:
;;     ./bin/wizeng.x86-64-linux --ext:all --monitors=control      test/monitors/apps/branch_gc.wasm
;;     ./bin/wizeng.x86-64-linux --ext:all --monitors=path-profile test/monitors/apps/branch_gc.wasm
;;
;; --monitors=control gives the ground truth -- func #7 and func #8 each execute 9 times:
;;     func #7:  x 9    br_on_cast[depth=0 funcref to (ref [] -> [])]   taken 6, not taken 3
;;     func #8:  x 9    br_on_cast_fail[...]                            taken 3, not taken 6
;;
;; INVARIANT: sum(counts) == activations. Measured:
;;     func #5   9 executions   sum(counts) = 9   correct
;;     func #6   9 executions   sum(counts) = 9   correct
;;     func #7   9 executions   sum(counts) = 6   3 lost
;;     func #8   9 executions   sum(counts) = 0   all 9 lost
;;
;; The two functions holding a cast opcode are exactly the two that break the invariant, while
;; their neighbours with an identical call count report correctly.
;;
;; No .wasm is committed for this file: the wabt in this environment rejects `anyref`, `(ref extern)`
;; and the GC type syntax, so a minimal case cannot be assembled here.
(module
  (func $f (export "f") (param $r externref) (result i32)
    (block $b (result (ref extern))
      (br_on_cast $b externref (ref extern) (local.get $r))
      (drop)
      (return (i32.const 0)))
    (drop)
    (i32.const 1))
  (func (export "main")
    (drop (call $f (ref.null extern))))
)
