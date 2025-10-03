(module
  (type (func (param i32) (result i32))) ;; sig = 0
  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (table $table (export "table") 0 funcref)
  (memory $memory (export "memory") 1)

  (data (i32.const 0) "\n")
  (data (i32.const 2) "\00\20\00\41\01\6A\0B")

  (func (export "main") (result i32)
    i32.const 2
    i32.const 0 ;; sig
    i32.const 2 ;; ptr
    i32.const 7 ;; len
    call $new_func 
    call_indirect (type 0)
    call $puti
    i32.const 0
    i32.const 2
    call $puts
    i32.const 0
  )

  (func $func (type 0)
    local.get 0
    i32.const 1
    i32.add
  )
)
