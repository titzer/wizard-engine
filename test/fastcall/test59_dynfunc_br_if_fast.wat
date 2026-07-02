;; Dynamic function (interpreted) with if/else surrounding a FAST_CALL.
;; Stresses stp: the if/else creates sidetable entries; after the FAST_CALL
;; on one arm, the interpreter must have the correct stp going forward.
;;
;; Func index layout: 0=new_func, 1=fast:double, 2=main
;; Dynamic function type 0: (i32 i32) -> i32
;;   param 0 = value, param 1 = flag
;;
;; Body bytecode (0 locals):
;;   \00             = 0 locals
;;   \20\01          = local.get 1    (flag)
;;   \04\7F          = if (i32)
;;   \20\00          =   local.get 0  (flag!=0: return value as-is)
;;   \05             = else
;;   \20\00          =   local.get 0
;;   \10\01          =   call 1 (fast:double)
;;   \0B             = end if
;;   \0B             = end
;;
;; dynfunc(6, 0) -> double(6) = 12
;; dynfunc(5, 1) -> 5
;; sum = 17
(module
  (type $t_ii_i (func (param i32 i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  (func $double (export "fast:double") (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)

  (memory (export "memory") 1)
  ;; 12 bytes: \00 \20\01 \04\7F \20\00 \05 \20\00 \10\01 \0B \0B
  (data (i32.const 0) "\00\20\01\04\7F\20\00\05\20\00\10\01\0B\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot i32)
    (local $acc i32)

    ;; create: type=0 (ii->i), ptr=0, len=14
    (call $new_func (i32.const 0) (i32.const 0) (i32.const 14))
    local.set $slot

    ;; dynfunc(6, 0) -> double(6) = 12
    i32.const 6
    i32.const 0
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.set $acc

    ;; dynfunc(5, 1) -> 5
    i32.const 5
    i32.const 1
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.get $acc
    i32.add
    i32.const 17
    i32.ne)
)
