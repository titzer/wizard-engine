;; Functions

(module $Mf
  (func (export "call") (result i32) (call $g))
  (func $g (result i32) (i32.const 5))
)
(register "Mf" $Mf)

(module $Nf
  (func $f (import "Mf" "call") (result i32))
  (export "Mf.call" (func $f))
  (func (export "call Mf.call") (result i32) (call $f))
  (func (export "call") (result i32) (call $g))
  (func $g (result i32) (i32.const 3))
)

(assert_return (invoke $Mf "call") (i32.const 5))
(assert_return (invoke $Nf "Mf.call") (i32.const 5))
(assert_return (invoke $Nf "call") (i32.const 3))
(assert_return (invoke $Nf "call Mf.call") (i32.const 5))

