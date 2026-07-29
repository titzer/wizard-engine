;; Repro for a known, unfixed bug: X86_64SinglePassCompiler.v3's
;; updateUContextToTrapsStub() has a FIXME:
;;   "wrong if a fast handler is interpreted, calls itself with fast_call,
;;    and HW traps"
;;
;; $F is invoked here via call_indirect, so it is never rewritten to
;; FAST_CALLn (only direct `call` sites to a fast_call_idx>=0 function are
;; rewritten) -- its first activation genuinely runs in the plain
;; interpreter. $F's own recursive self-call IS rewritten to FAST_CALLn
;; (since $F.fast_call_idx>=0), so each recursive step dispatches straight
;; into $F's compiled fast body, reusing the same physical
;; X86_64InterpreterFrame as the outer interpreted activation (fast bodies
;; never allocate their own frame).
;;
;; When the HW trap (OOB load) fires inside that recursively-dispatched
;; compiled body, the trap handler's heuristic for detecting "we are in a
;; fast handler" (comparing the runtime frame's owning function to the
;; static compile-time outermost function for the trapping IP) sees the
;; SAME function on both sides ($F), because the recursive dispatch lands
;; back in $F's own compiled unit -- so it fails to add the missing outer
;; (interpreted) frame.
;;
;; Compare test73_selfrec_interp_trap.wasm.out (run with --fast-functions,
;; 3 frames for $F) against the same module run WITHOUT --fast-functions
;; (4 frames for $F, one per recursion level n=3,2,1,0) -- one frame is
;; silently dropped. Left unfixed intentionally pending further study.
(module
  (memory 1)
  (table 1 funcref)
  (type $t (func (param i32) (result i32)))
  (elem (i32.const 0) $F)
  (func $F (export "fast:F") (type $t) (param $n i32) (result i32)
    (if (result i32) (i32.eqz (local.get $n))
      (then
        (i32.load (i32.const 0x7fffffff)))
      (else
        (call $F (i32.sub (local.get $n) (i32.const 1))))))
  (func (export "main") (result i32)
    (call_indirect (type $t) (i32.const 3) (i32.const 0)))
)
