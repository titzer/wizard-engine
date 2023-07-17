(module
  (func (export "not") (param $0 v128) (result v128) (v128.not (local.get $0)))
)

(assert_return (invoke "not" (v128.const i32x4 0 0 0 0))
                             (v128.const i32x4 -1 -1 -1 -1))
(assert_return (invoke "not" (v128.const i32x4 -1 -1 -1 -1))
                             (v128.const i32x4 0 0 0 0))
(assert_return (invoke "not" (v128.const i32x4 -1 0 -1 0))
                             (v128.const i32x4 0 -1 0 -1))
(assert_return (invoke "not" (v128.const i32x4 0 -1 0 -1))
                             (v128.const i32x4 -1 0 -1 0))
(assert_return (invoke "not" (v128.const i32x4 0x55555555 0x55555555 0x55555555 0x55555555))
                             (v128.const i32x4 0xAAAAAAAA 0xAAAAAAAA 0xAAAAAAAA 0xAAAAAAAA))
(assert_return (invoke "not" (v128.const i32x4 3435973836 3435973836 3435973836 3435973836))
                             (v128.const i32x4 858993459 858993459 858993459 858993459))
(assert_return (invoke "not" (v128.const i32x4 01_234_567_890 01_234_567_890 01_234_567_890 01_234_567_890))
                             (v128.const i32x4 3060399405 3060399405 3060399405 3060399405))
(assert_return (invoke "not" (v128.const i32x4 0x0_1234_5678 0x0_1234_5678 0x0_1234_5678 0x0_1234_5678))
                             (v128.const i32x4 0xedcba987 0xedcba987 0xedcba987 0xedcba987))

;; Type check
(assert_invalid (module (func (result v128) (v128.not (i32.const 0)))) "type mismatch")

;; Test operation with empty argument
(assert_invalid
  (module
    (func $v128.not-arg-empty (result v128)
      (v128.not)
    )
  )
  "type mismatch"
)
