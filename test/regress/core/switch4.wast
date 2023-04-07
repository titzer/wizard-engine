(module
;; Argument switch
  (func (export "arg") (param $i i32) (result i32)
    (block $0 (result i32)
      (i32.add (i32.const 1000)
        (block $default (result i32)
          (br_table $0 $default
            (i32.mul (i32.const 2) (local.get $i))
            (local.get $i)
          )
        )
      )
    )
  )
)

(assert_return (invoke "arg" (i32.const 0)) (i32.const 0))
(assert_return (invoke "arg" (i32.const 1)) (i32.const 1002))
(assert_return (invoke "arg" (i32.const 2)) (i32.const 1004))
(assert_return (invoke "arg" (i32.const 3)) (i32.const 1006))
(assert_return (invoke "arg" (i32.const 4)) (i32.const 1008))
