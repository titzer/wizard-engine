;; Test: trap inside a call_indirect callee when the caller is inlined.
;; $wrap is inlined into main. $wrap calls table[0] = $trap_if_zero via call_indirect.
;; When the callee traps, the JIT must have reconstructed $wrap's stack frame
;; so that the trap stack trace includes all three frames:
;;   main -> $wrap -> $trap_if_zero -> !trap[UNREACHABLE]
;; Without withReconstructedInlinedFrames around the call_indirect, $wrap's frame
;; is absent from the trace.
(module
  (type $t_i_i (func (param i32) (result i32)))

  (func $trap_if_zero (param i32) (result i32)
    local.get 0
    i32.eqz
    if unreachable end
    local.get 0)

  ;; This function gets inlined into main.
  (func $wrap (param i32) (result i32)
    local.get 0
    i32.const 0
    call_indirect (type $t_i_i))

  (table 1 funcref)
  (elem (i32.const 0) $trap_if_zero)

  (func (export "main") (result i32)
    i32.const 0   ;; argument: 0 will trigger the trap
    call $wrap)
)
