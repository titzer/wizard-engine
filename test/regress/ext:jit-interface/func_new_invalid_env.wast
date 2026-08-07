(assert_invalid
  (module
    (type $mt (func))
    (type $ft (func (result i32)))
    (memory 1)
    (scope $s)
    (func (export "main")
      ;; environment index 3 is out of bounds
      (drop (func.new 0 $ft 3 (i32.const 16) (i32.const 4)))
    )
  )
  "unknown environment"
)
