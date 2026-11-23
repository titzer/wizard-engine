;; Profiling a program that traps: functions on the stack at the trap never return.
(module
  (func $leaf)
  (func $child (call $leaf) (call $leaf))
  (func $main (export "main")
    (call $child)
    (call $leaf)
    (unreachable))
)
