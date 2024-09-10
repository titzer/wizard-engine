(assert_invalid
  (module
    (type (func (param i32)))
    (table 1 funcref)
    (func $conditional-dangling-type
      (if (i32.const 1)
        (then (call_indirect (type 0xffffffff) (i32.const 0)))
      )
    )
  )
  ""
)
