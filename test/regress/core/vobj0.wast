(module
  (type (;0;) (func (param i32) (result i32)))
  (func (;0;) (type 0) (param i32) (result i32)
    i32.const 65536
    local.get 0
    i32.const 4
    i32.mul
    i32.const 8
    i32.add
    i32.add
    i32.load
    i32.load offset=4)
  (memory (;0;) 3 3)
  (export "main" (func 0))
  (data (;0;) (i32.const 65536) "\13\00\00\00\05\00\00\00\1c\00\01\00$\00\01\00,\00\01\004\00\01\00<\00\01\00\00\00\00\00\0b\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00!\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\fd&\ff\ff"))
(assert_return (invoke "main" (i32.const 0)) (i32.const 11))
(assert_return (invoke "main" (i32.const 1)) (i32.const 12))
(assert_return (invoke "main" (i32.const 2)) (i32.const 33))
(assert_return (invoke "main" (i32.const 3)) (i32.const 44))
(assert_return (invoke "main" (i32.const 4)) (i32.const -55555))
