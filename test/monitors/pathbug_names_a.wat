;; BUG (PathProfilingMonitor.module, field at line 7): `module` is a single field overwritten by
;; each onParse, while `entries` accumulates across ALL modules. onFinish then renders every
;; function's name against the LAST module's name section.
;;
;; WasmMode.loadAndInstrumentModules (src/WasmMode.v3:51) loops over the wasm files calling onParse
;; per module, and the monitor is a MonitorRegistry singleton, so the field is shared.
;;
;; Reproduce (both must be assembled with --debug-names, or there are no names to mis-render):
;;     ./bin/wizeng.x86-64-linux --monitors=path-profile \
;;         test/monitors/pathbug_names_a.wasm test/monitors/pathbug_names_b.wasm
;;
;; EXPECTED: func "alpha"  /  func "zeta"  /  func #1
;; ACTUAL:   func "zeta"   /  func "zeta"  /  func #1
;;           -- this module's $alpha is labelled with the OTHER module's name.
;;
;; Fix direction: store the Module on PathProfileEntry rather than in a shared field.
(module
  (func $alpha (export "alpha") (result i32) (i32.const 1))
)
