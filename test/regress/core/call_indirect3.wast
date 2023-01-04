(module
  (table funcref (elem $fadd $fsub $fmul $fnone))
  (type $ii_i (func (param i32 i32) (result i32)))
  
  (func $fadd (param i32 i32) (result i32) (i32.add (local.get 0) (local.get 1)))
  (func $fsub (param i32 i32) (result i32) (i32.sub (local.get 0) (local.get 1)))
  (func $fmul (param i32 i32) (result i32) (i32.mul (local.get 0) (local.get 1)))
  (func $fnone (result i32) unreachable)

  (func $main (export "main") (param i32 i32 i32) (result i32)
    (call_indirect (type $ii_i) (local.get 0) (local.get 1) (local.get 2))
  )
)
(assert_return (invoke "main" (i32.const 22) (i32.const 33) (i32.const 0)) (i32.const 55))
(assert_return (invoke "main" (i32.const 11) (i32.const 44) (i32.const 1)) (i32.const -33))
(assert_return (invoke "main" (i32.const -5) (i32.const -5) (i32.const 2)) (i32.const 25))
(assert_trap (invoke "main" (i32.const -5) (i32.const -5) (i32.const 3)) "")
(assert_trap (invoke "main" (i32.const -9) (i32.const 0) (i32.const 4)) "")
