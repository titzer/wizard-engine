;; Instantiation is generative

(module definition $M
  (global (export "glob") (mut i32) (i32.const 0))
  (func (export "get") (result i32) (global.get 0))
  (func (export "set") (param i32) (global.set 0 (local.get 0)))
)

(module instance $I1 $M)
(module instance $I2 $M)
(register "I1" $I1)
(register "I2" $I2)

(assert_return (invoke $I1 "set" (i32.const 1)))
