(module
  (memory 1 1 shared)

  (func (export "init") (param $value i64) (i64.store (i32.const 0) (local.get $value)))

  (func (export "memory.atomic.wait32") (param $addr i32) (param $expected i32) (param $timeout i64) (result i32)
      (memory.atomic.wait32 (local.get 0) (local.get 1) (local.get 2)))
)

(invoke "init" (i64.const 0xffffffffffff))

;; wait returns immediately if values do not match
(assert_return (invoke "memory.atomic.wait32" (i32.const 0) (i32.const 0) (i64.const 0)) (i32.const 1))

;; wait times out if values do match and timeout is small
(assert_return (invoke "memory.atomic.wait32" (i32.const 0) (i32.const 0xffffffff) (i64.const 10)) (i32.const 2))
