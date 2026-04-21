;; Fast handler calls memory.grow, which is an expensive runtime out-call that
;; reloads r_mem0_base. Tests that the fast epilogue's restoreCallerIVars
;; correctly reloads all interpreter registers after a call that mutates memory.
(module
  (memory 1)
  (func $grow_and_check (export "fast:grow_and_check") (result i32)
    ;; grow by 1 page, return old size (should be 1)
    i32.const 1
    memory.grow)
  (func (export "main") (result i32)
    call $grow_and_check
    i32.const 1
    i32.ne)
)
