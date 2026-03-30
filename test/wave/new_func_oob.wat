(module
  (type (func (param i32) (result i32))) ;; sig = 0
  (import "wave" "new_func" (func $new_func (param i32 i32 i32) (result i32)))
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (table (export "table") 0 funcref)
  (memory (export "memory") 1)

  (data (i32.const 0) "\n")

  (func (export "main") (result i32)
    ;; new_func with sig_idx = -1 (out of bounds) should return -1
    (call $new_func (i32.const -1) (i32.const 0) (i32.const 0))
    call $puti
    i32.const 0
    i32.const 1
    call $puts

    ;; new_func with sig_idx = 99999 (out of bounds) should return -1
    (call $new_func (i32.const 99999) (i32.const 0) (i32.const 0))
    call $puti
    i32.const 0
    i32.const 1
    call $puts

    i32.const 0
  )
)
