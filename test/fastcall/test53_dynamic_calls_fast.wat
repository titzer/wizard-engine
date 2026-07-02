;; A function created at runtime via wave.new_func calls a static fast handler.
;; The dynamic function's bytecode (hardcoded in data) does: local.get 0, call $double, end.
;; Validates that new_func-created functions can invoke fast handlers via FAST_CALL rewriting.
(module
  (type $t_i_i (func (param i32) (result i32)))  ;; type 0

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  ;; fast:double is func index 1 (after the import)
  (func $double (export "fast:double") (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)

  ;; Body of the dynamic function:
  ;;   \00          = 0 locals
  ;;   \20\00       = local.get 0
  ;;   \10\01       = call 1 (fast:double)
  ;;   \0B          = end
  (memory (export "memory") 1)
  (data (i32.const 0) "\00\20\00\10\01\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (i32.const 7)
    ;; create dynamic function: sig=0, ptr=0, len=6
    (call $new_func (i32.const 0) (i32.const 0) (i32.const 6))
    ;; call it with argument 7; expect double(7) = 14
    (call_indirect (type $t_i_i))
    i32.const 14
    i32.ne)
)
