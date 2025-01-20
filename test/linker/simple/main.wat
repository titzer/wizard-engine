(module
  (import "link_a" "puti" (func $puti (param i32)))
  (import "link_a" "func" (func $func (param i32) (result i32)))
  (import "link_a" "ln" (func $ln))
  (import "link_a" "mem" (memory 1))
  
  (func $main (export "main")
    (call $puti (i32.const 11223344))
    (call $ln)
    (i32.store (i32.const 0) (i32.const 11223344))
    (call $puti (call $func (i32.const 11111111)))
    (call $ln)
  )
)
