;; BUG 3 (PathProfilingMonitor.placeProbes / BoolProbe): a two-successor block is always given a
;; BoolProbe, which unboxes operand 0 as an i32.
;;
;; ControlStack routes br_on_null, br_on_non_null, br_on_cast and br_on_cast_fail through brIf(),
;; so each produces an ordinary two-successor decision block. placeProbes special-cases only
;; BR_TABLE, so those blocks get a BoolProbe, and BoolProbe.fire does
;;     Values.unbox_u(loc.frame.getFrameAccessor().getOperand(0))
;; which is `Value.I32.!(v).val` -- a checked variant cast. The operand is a reference.
;;
;; EXPECTED: the branch is profiled like any other two-way decision.
;; ACTUAL: !TypeCheckException
;;           in Values.unbox_u() [src/engine/Value.v3 @ 116:52]
;;           in BoolProbe.fire() [src/monitors/PathProfilingMonitor.v3 @ 542:39]
;;
;; SECOND DEFECT, hidden behind the crash: even with a correct operand read, BoolProbe picks
;; `if(v != 0, trueEdge, falseEdge)`. br_on_null branches when the reference IS null and
;; br_on_cast_fail when the cast FAILS, so the two arms are swapped for those opcodes -- a silent
;; miscount rather than a crash.
;;
;; NOTE: the wabt in this environment cannot assemble br_on_non_null, so this .wat has no committed
;; .wasm. Reproduce with modules already in the repo:
;;     ./bin/wizeng.x86-64-linux --monitors=path-profile test/microbench/100ms/br_on_null0.wasm
;;     (also test/monitors/branch_monitor_gc.wasm, test/monitors/apps/branch2.wasm,
;;      test/monitors/apps/branch_gc.wasm)
;; Once the toolchain supports it, the module below is the minimal case: $f is called once with a
;; null reference, so the branch is taken and the probe fires on a Value.Ref.
(module
  (func $f (export "f") (param $r externref) (result i32)
    (block $nn
      (br_on_non_null $nn (local.get $r))
      (return (i32.const 9)))
    (i32.const 7))
  (func (export "main")
    (drop (call $f (ref.null extern))))
)
