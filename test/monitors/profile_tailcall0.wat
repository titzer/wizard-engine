;; Profiling tail calls: a function that tail-calls never returns itself.
(module
  (func $leaf)
  (func $tail2 (call $leaf))
  (func $tail1 (call $leaf) (return_call $tail2))
  (func $caller (call $tail1) (call $leaf))
  (func $main (export "main")
    (call $caller)
    (call $caller)
    (call $leaf))
)
