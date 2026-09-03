(module
  (func (export "i64.sub128") (param i64 i64 i64 i64) (result i64 i64)
    local.get 0
    local.get 1
    local.get 2
    local.get 3
    i64.sub128)
)
(assert_return (invoke "i64.sub128"
                  (i64.const 0) (i64.const 0)
                  (i64.const 0) (i64.const 0))
               (i64.const 0) (i64.const 0))
(assert_return (invoke "i64.sub128"
                  (i64.const 0) (i64.const 0)
                  (i64.const 1) (i64.const 0))
               (i64.const -1) (i64.const -1))
(assert_return (invoke "i64.sub128"
                  (i64.const 0) (i64.const 1)
                  (i64.const 1) (i64.const 1))
               (i64.const -1) (i64.const -1))
(assert_return (invoke "i64.sub128"
                  (i64.const 0) (i64.const 0)
                  (i64.const 1) (i64.const 1))
               (i64.const -1) (i64.const -2))
(assert_return (invoke "i64.sub128"
                   (i64.const 0) (i64.const -2459085471354756766)
                   (i64.const -9151153060221070927) (i64.const -1))
               (i64.const 9151153060221070927) (i64.const -2459085471354756766))
(assert_return (invoke "i64.sub128"
                   (i64.const 4566502638724063423) (i64.const -4282658540409485563)
                   (i64.const -6884077310018979971) (i64.const -1))
               (i64.const -6996164124966508222) (i64.const -4282658540409485563))
(assert_return (invoke "i64.sub128"
                   (i64.const 1) (i64.const 3118380319444903041)
                   (i64.const 0) (i64.const 3283115686417695443))
               (i64.const 1) (i64.const -164735366972792402))
(assert_return (invoke "i64.sub128"
                   (i64.const -7208415241680161810) (i64.const -1)
                   (i64.const 1) (i64.const 0))
               (i64.const -7208415241680161811) (i64.const -1))
(assert_return (invoke "i64.sub128"
                   (i64.const 0) (i64.const 3944850126731328706)
                   (i64.const 1) (i64.const 1))
               (i64.const -1) (i64.const 3944850126731328704))
(assert_return (invoke "i64.sub128"
                   (i64.const 1) (i64.const -1)
                   (i64.const -1) (i64.const -1))
               (i64.const 2) (i64.const -1))
(assert_return (invoke "i64.sub128"
                   (i64.const -1) (i64.const -1)
                   (i64.const 4855833073346115923) (i64.const -6826437637438999645))
               (i64.const -4855833073346115924) (i64.const 6826437637438999644))
(assert_return (invoke "i64.sub128"
                   (i64.const 1) (i64.const 0)
                   (i64.const -1) (i64.const -1))
               (i64.const 2) (i64.const 0))
(assert_return (invoke "i64.sub128"
                   (i64.const 1) (i64.const 0)
                   (i64.const 1) (i64.const 0))
               (i64.const 0) (i64.const 0))
(assert_return (invoke "i64.sub128"
                   (i64.const -1) (i64.const -1)
                   (i64.const 0) (i64.const 0))
               (i64.const -1) (i64.const -1))
(assert_return (invoke "i64.sub128"
                   (i64.const 1) (i64.const -1)
                   (i64.const -6365475388498096428) (i64.const -1))
               (i64.const 6365475388498096429) (i64.const -1))
(assert_return (invoke "i64.sub128"
                   (i64.const 6804238617560992346) (i64.const -1)
                   (i64.const 0) (i64.const -1))
               (i64.const 6804238617560992346) (i64.const 0))
(assert_return (invoke "i64.sub128"
                   (i64.const 0) (i64.const 1)
                   (i64.const 1) (i64.const -7756145513466453619))
               (i64.const -1) (i64.const 7756145513466453619))
(assert_return (invoke "i64.sub128"
                   (i64.const 1) (i64.const -1)
                   (i64.const 1) (i64.const 1))
               (i64.const 0) (i64.const -2))
(assert_return (invoke "i64.sub128"
                   (i64.const 0) (i64.const 1)
                   (i64.const 1) (i64.const 0))
               (i64.const -1) (i64.const 0))
(assert_return (invoke "i64.sub128"
                   (i64.const 1) (i64.const 5602881641763648953)
                   (i64.const -2110589244314239080) (i64.const -1))
               (i64.const 2110589244314239081) (i64.const 5602881641763648953))
(assert_return (invoke "i64.sub128"
                   (i64.const 0) (i64.const 1)
                   (i64.const -1) (i64.const -1))
               (i64.const 1) (i64.const 1))
(assert_return (invoke "i64.sub128"
                   (i64.const 0) (i64.const -1)
                   (i64.const 3553816990259121806) (i64.const -2105235417856431622))
               (i64.const -3553816990259121806) (i64.const 2105235417856431620))
(assert_return (invoke "i64.sub128"
                   (i64.const 1861102705894987245) (i64.const 1)
                   (i64.const 3713781778534059871) (i64.const 1))
               (i64.const -1852679072639072626) (i64.const -1))
(assert_return (invoke "i64.sub128"
                   (i64.const 0) (i64.const -1)
                   (i64.const 1) (i64.const 1832524486821761762))
               (i64.const -1) (i64.const -1832524486821761764))
