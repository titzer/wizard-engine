(module
  (func (export "i64.add128") (param i64 i64 i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.add128)
)
(assert_return (invoke "i64.add128"
                   (i64.const 1) (i64.const -5381447440966559717)
                   (i64.const 1020031372481336745) (i64.const 1))
               (i64.const 1020031372481336746) (i64.const -5381447440966559716))
