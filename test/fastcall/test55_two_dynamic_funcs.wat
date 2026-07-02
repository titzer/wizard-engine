;; Two functions created via wave.new_func, each wrapping a different fast handler.
;; Dynamic func A (type 0, i32->i32): wraps fast:double.
;;   \00 \20\00 \10\01 \0B
;; Dynamic func B (type 1, i32 i32->i32): wraps fast:add.
;;   \00 \20\00 \20\01 \10\02 \0B
;; Func index layout: 0=new_func, 1=fast:double, 2=fast:add, 3=main.
;; main creates both, then calls A(6)=12 and B(3,4)=7, checks sum=19.
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

  ;; Body A at offset 0, len 6: \00 \20\00 \10\01 \0B
  ;; Body B at offset 6, len 8: \00 \20\00 \20\01 \10\02 \0B
  (memory (export "memory") 1)
  (data (i32.const 0) "\00\20\00\10\01\0B\00\20\00\20\01\10\02\0B")

  (table (export "table") 0 funcref)

  (func (export "main") (result i32)
    (local $slot_a i32) (local $slot_b i32) (local $sum i32)

    ;; create dynamic func A (type 0), store slot
    (call $new_func (i32.const 0) (i32.const 0) (i32.const 6))
    local.set $slot_a

    ;; create dynamic func B (type 1), store slot
    (call $new_func (i32.const 1) (i32.const 6) (i32.const 8))
    local.set $slot_b

    ;; call A(6) = double(6) = 12
    i32.const 6
    local.get $slot_a
    (call_indirect (type $t_i_i))

    ;; call B(3,4) = add(3,4) = 7
    i32.const 3
    i32.const 4
    local.get $slot_b
    (call_indirect (type $t_ii_i))

    i32.add  ;; 12 + 7 = 19
    local.set $sum
    local.get $sum
    i32.const 19
    i32.ne)
)
