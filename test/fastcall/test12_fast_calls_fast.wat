;; Fast function calls another fast function: sum of squares.
(module
  (func $square (export "fast:square") (param i32) (result i32)
    local.get 0
    local.get 0
    i32.mul)
  (func $sum_of_squares (export "fast:sum_of_squares") (param i32 i32) (result i32)
    local.get 0
    call $square
    local.get 1
    call $square
    i32.add)
  (func (export "main") (result i32)
    i32.const 3
    i32.const 4
    call $sum_of_squares    ;; 9 + 16 = 25
    i32.const 25
    i32.ne)
)
