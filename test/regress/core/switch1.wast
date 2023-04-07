(module
;; Argument switch
  (func (export "arg") (param $i i32) (result i32)
    (return
      (block $1 (result i32)
        (i32.add (i32.const 100)
          (block $0 (result i32)
            (i32.add (i32.const 1000)
              (block $default (result i32)
                (br_table $0 $1 $default
                  (i32.mul (i32.const 2) (local.get $i))
                  (i32.and (i32.const 3) (local.get $i))
                )
              )
            )
          )
        )
      )
    )
  )
)

(assert_return (invoke "arg" (i32.const 0)) (i32.const 100))
(assert_return (invoke "arg" (i32.const 1)) (i32.const 2))
(assert_return (invoke "arg" (i32.const 2)) (i32.const 1104))
(assert_return (invoke "arg" (i32.const 3)) (i32.const 1106))
(assert_return (invoke "arg" (i32.const 4)) (i32.const 108))
(assert_return (invoke "arg" (i32.const 5)) (i32.const 10))
(assert_return (invoke "arg" (i32.const 6)) (i32.const 1112))
(assert_return (invoke "arg" (i32.const 7)) (i32.const 1114))
(assert_return (invoke "arg" (i32.const 8)) (i32.const 116))

