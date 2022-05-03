(assert_invalid
  (module (func $type-br_if-num-vs-void-after-unreachable (result i32)
    (block (result i32)
      (block (unreachable) (br_if 1 (i32.const 0) (i32.const 0)))
    )
  ))
  "type mismatch"
)
(assert_invalid
  (module (func $type-br_if-num-vs-num-after-unreachable (result i32)
    (block (result i32)
      (block (result f32) (unreachable) (br_if 1 (i32.const 0) (i32.const 0)))
      (drop) (i32.const 0)
    )
  ))
  "type mismatch"
)
(assert_invalid
  (module (func $br_if-unreachable (result i32)
    (block (result i32)
      (block
        (br_if 1 (unreachable) (i32.const 0))
      )
      (i32.const 0)
    )
  ))
  "type mismatch"
)
(assert_invalid
  (module (func $br_if-unreachable2 (result i32)
    (block (result i32)
      (block
        (br_if 1 (unreachable) (i32.const 559))
      )
      (i32.const 0)
    )
  ))
  "type mismatch"
)
