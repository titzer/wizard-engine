;; Dynamic function (interpreted) with two FAST_CALLs: one on each arm of if/else.
;; Two different fast handlers on each branch stress the sidetable through both arms.
;;
;; Func index layout: 0=new_func, 1=fast:double, 2=fast:negate, 3=main
;; Dynamic function type 1: (i32 i32) -> i32  (types: 0=i32->i32, 1=ii->i)
;;   param 0=value, param 1=flag
;;
;; Body (0 locals):
;;   \00             = 0 locals
;;   \20\01          = local.get 1   (flag)
;;   \04\7F          = if (i32)
;;   \20\00          =   local.get 0
;;   \10\01          =   call 1 (fast:double)
;;   \05             = else
;;   \20\00          =   local.get 0
;;   \10\02          =   call 2 (fast:negate)
;;   \0B             = end
;;   \0B             = end
;;
;; dynfunc(5, 1) -> double(5) = 10
;; dynfunc(5, 0) -> negate(5) = -5
;; 10 + (-5) = 5
(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  (func $double (export "fast:double") (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)

  (func $negate (export "fast:negate") (param i32) (result i32)
    i32.const 0
    local.get 0
    i32.sub)

  (memory (export "memory") 1)
  ;; 14 bytes: \00 \20\01 \04\7F \20\00 \10\01 \05 \20\00 \10\02 \0B \0B
  (data (i32.const 0) "\00\20\01\04\7F\20\00\10\01\05\20\00\10\02\0B\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot i32)
    (local $acc i32)

    ;; create: type=1 (ii->i), ptr=0, len=16
    (call $new_func (i32.const 1) (i32.const 0) (i32.const 16))
    local.set $slot

    ;; dynfunc(5, 1) -> double(5) = 10
    i32.const 5
    i32.const 1
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.set $acc

    ;; dynfunc(5, 0) -> negate(5) = -5
    i32.const 5
    i32.const 0
    local.get $slot
    (call_indirect (type $t_ii_i))
    local.get $acc
    i32.add
    i32.const 5
    i32.ne)
)
