(module
  (func (export "i64.add128") (param i64 i64 i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.add128)
)
(assert_return (invoke "i64.add128"
                   (i64.const -1) (i64.const -1)
                   (i64.const -1) (i64.const -1))
               (i64.const -2) (i64.const -1))
