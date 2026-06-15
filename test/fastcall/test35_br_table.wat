;; Fast handler uses br_table: maps 0->10, 1->20, 2->30, else->0.
(module
  (func $dispatch (export "fast:dispatch") (param $n i32) (result i32)
    (block $b2
      (block $b1
        (block $b0
          local.get $n
          br_table $b0 $b1 $b2 $b2)
        i32.const 10
        return)
      i32.const 20
      return)
    i32.const 30
    return)
  (func (export "main") (result i32)
    i32.const 0
    call $dispatch
    i32.const 10
    i32.ne

    i32.const 1
    call $dispatch
    i32.const 20
    i32.ne
    i32.or

    i32.const 2
    call $dispatch
    i32.const 30
    i32.ne
    i32.or

    i32.const 99
    call $dispatch
    i32.const 30
    i32.ne
    i32.or)
)
