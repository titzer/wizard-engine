;; A function created via wave.new_func chains two fast handler calls:
;;   fast:add(x, x) -> fast:double(result)
;; Bytecode (func index layout: 0=new_func, 1=fast:double, 2=fast:add, 3=main):
;;   \00             = 0 locals
;;   \20\00          = local.get 0
;;   \20\00          = local.get 0
;;   \10\02          = call 2 (fast:add)
;;   \10\01          = call 1 (fast:double)
;;   \0B             = end
;; For x=5: add(5,5)=10, double(10)=20.
(module
  (type $t_i_i  (func (param i32) (result i32)))
  (type $t_ii_i (func (param i32 i32) (result i32)))

  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))

  (func $double (export "fast:double") (param i32) (result i32)
    local.get 0
    local.get 0
    i32.add)
  (func $add (export "fast:add") (param i32 i32) (result i32)
    local.get 0
    local.get 1
    i32.add)

  (memory (export "memory") 1)
  (data (i32.const 0) "\00\20\00\20\00\10\02\10\01\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    i32.const 5
    (call $new_func (i32.const 0) (i32.const 0) (i32.const 10))
    (call_indirect (type $t_i_i))
    i32.const 20
    i32.ne)
)
