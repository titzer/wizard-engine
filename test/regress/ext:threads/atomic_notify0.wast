(module
  (memory 1 1 shared)

  (func (export "init") (param $value i64) (i64.store (i32.const 0) (local.get $value)))

  (func (export "memory.atomic.notify") (param $addr i32) (param $count i32) (result i32)
      (memory.atomic.notify (local.get 0) (local.get 1)))
)

(invoke "init" (i64.const 0xffffffffffff))

(assert_return (invoke "memory.atomic.notify" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "memory.atomic.notify" (i32.const 0) (i32.const 10)) (i32.const 0))
