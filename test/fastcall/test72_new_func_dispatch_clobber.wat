;; Func layout: 0=new_func, 1=fast:worker, 2=heavy, 3=main
;;
;; Dynamic body (type $t_i_i = i32->i32):
;;   \00          = 0 local decls
;;   \20\00       = local.get 0
;;   \10\01       = call 1 (fast:worker)
;;   \41\01       = i32.const 1
;;   \6A          = i32.add
;;   \0B          = end
;; total = 9 bytes
(module
  (type $t_i_i (func (param i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  (func $worker (export "fast:worker") (param $x i32) (result i32)
    local.get $x
    call $heavy)

  (func $heavy (param $x i32) (result i32)
    local.get $x  i32.const 0  i32.add
    local.get $x  i32.const 1  i32.add
    local.get $x  i32.const 2  i32.add
    local.get $x  i32.const 3  i32.add
    local.get $x  i32.const 4  i32.add
    local.get $x  i32.const 5  i32.add
    local.get $x  i32.const 6  i32.add
    local.get $x  i32.const 7  i32.add
    local.get $x  i32.const 8  i32.add
    local.get $x  i32.const 9  i32.add
    i32.add i32.add i32.add i32.add i32.add
    i32.add i32.add i32.add i32.add   ;; sum = 10x+45
    i32.const 45
    i32.sub                           ;; 10x
    i32.const 9  local.get $x  i32.mul
    i32.sub)                          ;; x

  (memory (export "memory") 1)
  ;; body: \00 \20\00 \10\01 \41\01 \6A \0B  = 9 bytes
  (data (i32.const 0) "\00\20\00\10\01\41\01\6A\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot i32)
    ;; create dynamic func: sig=0, ptr=0, len=9
    (call $new_func (i32.const 0) (i32.const 0) (i32.const 9))
    local.set $slot
    ;; dynfunc(5) -> fast:worker(5) -> heavy(5) = 5, then +1 = 6
    i32.const 5
    local.get $slot
    (call_indirect (type $t_i_i))
    i32.const 6
    i32.ne)
)
