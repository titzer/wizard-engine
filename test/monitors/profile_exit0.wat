;; Profiling a program that ends by calling proc_exit: functions on the stack never return.
(module
  (import "wasi_snapshot_preview1" "proc_exit" (func $proc_exit (param i32)))
  (memory (export "memory") 1)
  (func $leaf)
  (func $child (call $leaf) (call $leaf))
  (func $finish (call $leaf) (call $proc_exit (i32.const 0)))
  (func $start (export "_start")
    (call $child)
    (call $finish))
)
