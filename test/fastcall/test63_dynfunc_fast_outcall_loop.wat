;; Dynamic function (interpreted) with a loop that calls a fast handler which
;; makes an out-call to a non-fast function with its own control flow.
;; br_if and br inside the loop must have correct stp after every fast call.
;;
;; Func index layout: 0=new_func, 1=fast:inc_via_call, 2=slow_inc, 3=main
;;
;; Dynamic function body (1 local):
;;   \01\01\7F            = 1 local of type i32
;;   \20\00 \21\01        = local.get 0, local.set 1  (copy param to $v)
;;   \02\40               = block
;;   \03\40               =   loop
;;   \20\01 \41\0A \4E    =     local.get 1, i32.const 10, i32.ge_s
;;   \0D\01               =     br_if 1  (exit if v >= 10)
;;   \20\01 \10\01 \21\01 =     local.get 1, call 1 (fast:inc_via_call), local.set 1
;;   \0C\00               =     br 0  (loop back)
;;   \0B \0B              =   end loop, end block
;;   \20\01 \0B           = local.get 1, end
(module
  (type $t_i_i (func (param i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  (func $slow_inc (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)

  (func $inc_via_call (export "fast:inc_via_call") (param i32) (result i32)
    local.get 0
    call $slow_inc)

  (memory (export "memory") 1)
  (data (i32.const 0) "\01\01\7F\20\00\21\01\02\40\03\40\20\01\41\0A\4E\0D\01\20\01\10\02\21\01\0C\00\0B\0B\20\01\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot i32)

    ;; body length: 31 bytes
    (call $new_func (i32.const 0) (i32.const 0) (i32.const 31))
    local.set $slot

    ;; dynfunc(7) -> increments to 10, returns 10
    i32.const 7
    local.get $slot
    (call_indirect (type $t_i_i))
    i32.const 10
    i32.ne)
)
