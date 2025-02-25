(module
(func (export "main") (param i32)
  (loop $exit
    (i32.const 0)
    (drop (i32.const 7)) ;; Only there so that the -to option does not crash
    (i32.const 99)
    (local.get 0)
    (i32.const 1)
    (i32.sub)
    (local.tee 0)
    (i32.div_s)
    (br $exit)
    (drop)))
)

(assert_trap (invoke "main" (i32.const 1)) "integer divide by zero")
(assert_trap (invoke "main" (i32.const 1000)) "integer divide by zero")
(assert_trap (invoke "main" (i32.const 10_000)) "integer divide by zero")

