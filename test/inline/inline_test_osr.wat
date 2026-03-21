;; Test case for OSR + inlining interaction bug.
(module
  ;; $inner(n): loops n times and returns n.
  (func $inner (param i32) (result i32)
    (local i32)
    loop
      local.get 1
      i32.const 1
      i32.add
      local.tee 1
      local.get 0
      i32.lt_s
      br_if 0
    end
    local.get 0
  )

  ;; Expected return value: n * 10.
  (func $outer (param i32) (result i32)
    (local i32)
    loop
      i32.const 10
      call $inner
      local.get 1
      i32.add
      local.set 1
      local.get 0
      i32.const 1
      i32.sub
      local.tee 0
      br_if 0
    end
    local.get 1
  )

  (func (export "main") (result i32)
    i32.const 100000
    call $outer
    i32.const 1000000
    i32.ne
  )
)
