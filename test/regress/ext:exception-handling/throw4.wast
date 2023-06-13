(module
  (tag $e0)
  (func $throw-if (export "throw-if") (param i32) (result i32)
    (local.get 0)
    (i32.const 0) (if (i32.ne) (then
    (try
      (do)
      (catch $e0
        unreachable
      )
    )
    (throw $e0)
    ))
    (i32.const 0)
  )
)

(assert_return (invoke "throw-if" (i32.const 0)) (i32.const 0))
(assert_exception (invoke "throw-if" (i32.const 103)))
(assert_exception (invoke "throw-if" (i32.const -12)))
