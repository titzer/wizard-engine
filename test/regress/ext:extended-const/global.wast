
(module
    (global $z3 i32 (i32.add 
                     (i32.sub
                      (i32.mul (i32.const 20) (i32.const 2))
                      (i32.const 2)) 
                     (i32.const 4)))
    (func (export "get-z3") (result i32) (global.get $z3)))

(assert_return (invoke "get-z3") (i32.const 42))