;; Dynamic function (interpreted) with a loop containing a FAST_CALL.
;; Both br_if (loop exit) and br (loop back) require correct stp after FAST_CALL.
;;
;; Func index layout: 0=new_func, 1=fast:inc, 2=main
;; Dynamic function type 0: (i32) -> i32
;;
;; Body bytecode (1 local of type i32):
;;   \01\7F          = 1 local, type i32
;;   \20\00          = local.get 0     (copy param to local $v)
;;   \21\01          = local.set 1
;;   \02\40          = block
;;   \03\40          =   loop
;;   \20\01          =     local.get 1
;;   \41\0A          =     i32.const 10
;;   \4E             =     i32.ge_s
;;   \0D\01          =     br_if 1     (exit block if v >= 10)
;;   \20\01          =     local.get 1
;;   \10\01          =     call 1 (fast:inc)
;;   \21\01          =     local.set 1
;;   \0C\00          =     br 0        (back to loop)
;;   \0B             =   end loop
;;   \0B             = end block
;;   \20\01          = local.get 1
;;   \0B             = end
;;
;; dynfunc(7) -> increments 7->8->9->10 (3 fast:inc calls), returns 10
(module
  (type $t_i_i (func (param i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  (func $inc (export "fast:inc") (param i32) (result i32)
    local.get 0
    i32.const 1
    i32.add)

  (memory (export "memory") 1)
  ;; 31 bytes: locals section is \01\01\7F (1 entry, count=1, type=i32)
  (data (i32.const 0) "\01\01\7F\20\00\21\01\02\40\03\40\20\01\41\0A\4E\0D\01\20\01\10\01\21\01\0C\00\0B\0B\20\01\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot i32)

    ;; create: type=0 (i32->i32), ptr=0, len=31
    (call $new_func (i32.const 0) (i32.const 0) (i32.const 31))
    local.set $slot

    ;; dynfunc(7) -> 10
    i32.const 7
    local.get $slot
    (call_indirect (type $t_i_i))
    i32.const 10
    i32.ne)
)
