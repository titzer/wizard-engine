(module
;; Argument switch
  (func (export "arg") (param i32 i32) (result i32)
    (return
      (block $0 (result i32)
        (i32.add (i32.const 1000)
          (block $default (result i32)
            (br_table $0 $default
              (local.get 1)
              (i32.and (i32.const 3) (local.get 0))
            )
          )
        )
      )
    )
  )
)

(assert_return (invoke "arg" (i32.const 0) (i32.const 6)) (i32.const 6))
(assert_return (invoke "arg" (i32.const 0) (i32.const 7)) (i32.const 7))
(assert_return (invoke "arg" (i32.const 1) (i32.const 7)) (i32.const 1007))
(assert_return (invoke "arg" (i32.const 2) (i32.const 8)) (i32.const 1008))
(assert_return (invoke "arg" (i32.const 3) (i32.const 9)) (i32.const 1009))
(assert_return (invoke "arg" (i32.const 4) (i32.const 10)) (i32.const 10))
(assert_return (invoke "arg" (i32.const 5) (i32.const 11)) (i32.const 1011))
(assert_return (invoke "arg" (i32.const 6) (i32.const 12)) (i32.const 1012))
(assert_return (invoke "arg" (i32.const 7) (i32.const 13)) (i32.const 1013))
(assert_return (invoke "arg" (i32.const 8) (i32.const 14)) (i32.const 14))

