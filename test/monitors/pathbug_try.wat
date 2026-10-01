;; BUG 2 (CfgBuilder.new): `ctl_stack.newBlock` is never assigned, so it keeps ControlStack's
;; default, which returns the zero value of B -- null for CfgBlock.
;;
;; ControlStack.visit_TRY and visit_TRY_TABLE both do
;;     block = mergeBlock(this, block, newBlock(this));
;; passing that null as the merge TARGET. mergeCfgBlock guards `from == null` but never `to == null`,
;; so it walks into the empty-block splice and dereferences `to.incoming` (CfgBuilder.v3:93).
;;
;; EXPECTED: the function is analyzed like any other.
;; ACTUAL: the engine aborts before the module runs --
;;     !NullCheckException
;;       in CfgBuilder.mergeCfgBlock() [src/util/CfgBuilder.v3 @ 93:61]
;;       in ControlStack.visit_TRY_TABLE() [src/util/ControlStack.v3 @ 104:35]
;;
;; Latent on master, where CfgBuilder is reached only through BytecodeProfilingMonitor's narrow
;; dispatch-source search. path-profile calls build() on every non-imported function of every
;; module, so any module containing `try` or `try_table` now kills the engine.
;;
;; NOTE: the wabt in this environment assembles neither legacy `try` (needs "legacy-eh") nor
;; `try_table`, so this .wat has no committed .wasm. Reproduce with modules already in the repo:
;;     ./bin/wizeng.x86-64-linux --monitors=path-profile test/microbench/100ms/throw_catch0.wasm
;;     (also throw_catch1.wasm, throw_catch2.wasm)
;; Once the toolchain supports it, the module below is the minimal case.
(module
  (tag $t)
  (func $f (export "f") (param i32) (result i32)
    (block $h
      (try_table (result i32) (catch_all $h)
        (i32.const 7))
      (return))
    (i32.const 9))
  (func (export "main")
    (drop (call $f (i32.const 0))))
)
