(module
  ;; low 128 bits of a 128x128 multiply:
  ;;   (alo,ahi) * (blo,bhi) = mul_wide_u(alo, blo) + ((alo*bhi + ahi*blo) << 64)
  (func (export "mul128") (param $alo i64) (param $ahi i64) (param $blo i64) (param $bhi i64)
                          (result i64 i64)
    local.get $alo
    local.get $blo
    i64.mul_wide_u
    i64.const 0
    local.get $alo
    local.get $bhi
    i64.mul
    local.get $ahi
    local.get $blo
    i64.mul
    i64.add
    i64.add128)
)
(assert_return (invoke "mul128" (i64.const -1) (i64.const -1) (i64.const -1) (i64.const -1)) (i64.const 1) (i64.const 0))
(assert_return (invoke "mul128" (i64.const 1311768467463790320) (i64.const 1147797409030816545) (i64.const -2401053089206453570) (i64.const 1234605616436508552)) (i64.const -1483760917106141664) (i64.const -3466964228564464171))
(assert_return (invoke "mul128" (i64.const 1) (i64.const 0) (i64.const -1) (i64.const -1)) (i64.const -1) (i64.const -1))
(assert_return (invoke "mul128" (i64.const 0) (i64.const 1) (i64.const 0) (i64.const 1)) (i64.const 0) (i64.const 0))
(assert_return (invoke "mul128" (i64.const -1) (i64.const 0) (i64.const 2) (i64.const 0)) (i64.const -2) (i64.const 1))
