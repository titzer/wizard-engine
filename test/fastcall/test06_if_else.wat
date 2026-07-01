;; Fast function with if/else: absolute value.
(module
  (func $abs (export "fast:abs") (param $n i32) (result i32)
    local.get $n
    i32.const 0
    i32.lt_s
    if (result i32)
      i32.const 0
      local.get $n
      i32.sub
    else
      local.get $n
    end)
  (func (export "main") (result i32)
    i32.const -7
    call $abs
    i32.const 7
    i32.ne)
)
