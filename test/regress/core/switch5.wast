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

(assert_return (invoke "arg" (i32.const 1)) (i32.const 1002))
