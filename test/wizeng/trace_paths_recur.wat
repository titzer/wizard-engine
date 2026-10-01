;; Recursion gives each activation its own path register, which must survive the calls the
;; compiler emits around it.
(module
  (func $fact (export "fact") (param $n i32) (result i32)
    (if (result i32) (i32.le_s (local.get $n) (i32.const 1))
      (then (i32.const 1))
      (else (i32.mul (local.get $n) (call $fact (i32.sub (local.get $n) (i32.const 1)))))
    )
  )
  (func (export "main")
    (drop (call $fact (i32.const 5))))
)
