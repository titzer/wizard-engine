(module
(func (export "main") (param i32)
  (loop $exit
    (i32.const 0)
    (drop (i32.const 7)) ;; Only there so that the -to option does not crash
    (local.get 0)
    (i32.const 1)
    (i32.sub)
    (local.tee 0)
    (br_if $exit)
    (drop)))
)

(assert_return (invoke "main" (i32.const 1)))
(assert_return (invoke "main" (i32.const 1000)))
(assert_return (invoke "main" (i32.const 10_000)))
