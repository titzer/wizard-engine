(module
  (func (export "i64.add128") (param i64 i64 i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.add128)
)
(assert_return (invoke "i64.add128"
                  (i64.const 0) (i64.const 0)
                  (i64.const 0) (i64.const 0))
               (i64.const 0) (i64.const 0))
(assert_return (invoke "i64.add128"
                  (i64.const 0) (i64.const 1)
                  (i64.const 1) (i64.const 0))
               (i64.const 1) (i64.const 1))
(assert_return (invoke "i64.add128"
                  (i64.const 1) (i64.const 0)
                  (i64.const -1) (i64.const 0))
               (i64.const 0) (i64.const 1))
(assert_return (invoke "i64.add128"
                  (i64.const 1) (i64.const 1)
                  (i64.const -1) (i64.const -1))
               (i64.const 0) (i64.const 1))
(assert_return (invoke "i64.add128"
                   (i64.const -2418420703207364752) (i64.const -1)
                   (i64.const -1) (i64.const -1))
               (i64.const -2418420703207364753) (i64.const -1))
(assert_return (invoke "i64.add128"
                   (i64.const 0) (i64.const 0)
                   (i64.const -4579433644172935106) (i64.const -1))
               (i64.const -4579433644172935106) (i64.const -1))
(assert_return (invoke "i64.add128"
                   (i64.const 0) (i64.const 0)
                   (i64.const 1) (i64.const -1))
               (i64.const 1) (i64.const -1))
(assert_return (invoke "i64.add128"
                   (i64.const 1) (i64.const 0)
                   (i64.const 1) (i64.const 0))
               (i64.const 2) (i64.const 0))
(assert_return (invoke "i64.add128"
                   (i64.const -1) (i64.const -1)
                   (i64.const -1) (i64.const -1))
               (i64.const -2) (i64.const -1))
(assert_return (invoke "i64.add128"
                   (i64.const 0) (i64.const -1)
                   (i64.const 1) (i64.const 0))
               (i64.const 1) (i64.const -1))
(assert_return (invoke "i64.add128"
                   (i64.const 0) (i64.const 0)
                   (i64.const 0) (i64.const -1))
               (i64.const 0) (i64.const -1))
(assert_return (invoke "i64.add128"
                   (i64.const 1) (i64.const 0)
                   (i64.const -1) (i64.const -1))
               (i64.const 0) (i64.const 0))
(assert_return (invoke "i64.add128"
                   (i64.const 0) (i64.const 6184727276166606191)
                   (i64.const 0) (i64.const 1))
               (i64.const 0) (i64.const 6184727276166606192))
(assert_return (invoke "i64.add128"
                   (i64.const -8434911321912688222) (i64.const -1)
                   (i64.const 1) (i64.const -1))
               (i64.const -8434911321912688221) (i64.const -2))
(assert_return (invoke "i64.add128"
                   (i64.const 1) (i64.const -1)
                   (i64.const 0) (i64.const -1))
               (i64.const 1) (i64.const -2))
(assert_return (invoke "i64.add128"
                   (i64.const 1) (i64.const -5148941131328838092)
                   (i64.const 0) (i64.const 0))
               (i64.const 1) (i64.const -5148941131328838092))
(assert_return (invoke "i64.add128"
                   (i64.const 1) (i64.const 1)
                   (i64.const 1) (i64.const 0))
               (i64.const 2) (i64.const 1))
(assert_return (invoke "i64.add128"
                   (i64.const -1) (i64.const -1)
                   (i64.const -3636740005180858631) (i64.const -1))
               (i64.const -3636740005180858632) (i64.const -1))
(assert_return (invoke "i64.add128"
                   (i64.const -5529682780229988275) (i64.const -1)
                   (i64.const 0) (i64.const 0))
               (i64.const -5529682780229988275) (i64.const -1))
(assert_return (invoke "i64.add128"
                   (i64.const 1) (i64.const -5381447440966559717)
                   (i64.const 1020031372481336745) (i64.const 1))
               (i64.const 1020031372481336746) (i64.const -5381447440966559716))
(assert_return (invoke "i64.add128"
                   (i64.const 1) (i64.const 1)
                   (i64.const 0) (i64.const 0))
               (i64.const 1) (i64.const 1))
(assert_return (invoke "i64.add128"
                   (i64.const -9133888546939907356) (i64.const -1)
                   (i64.const 1) (i64.const 1))
               (i64.const -9133888546939907355) (i64.const 0))
(assert_return (invoke "i64.add128"
                   (i64.const -4612047512704241719) (i64.const -1)
                   (i64.const 0) (i64.const -1))
               (i64.const -4612047512704241719) (i64.const -2))
(assert_return (invoke "i64.add128"
                   (i64.const 414720966820876428) (i64.const -1)
                   (i64.const 1) (i64.const 0))
               (i64.const 414720966820876429) (i64.const -1))
