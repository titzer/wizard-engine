;; A fast:-exported popcount function with 2 locals: a loop with an early
;; return inside a nested if, and an unreachable tail after the loop.
(module
  (func $popcount (export "fast:popcount") (param i32) (result i32)
    (local i32 i32)
    i32.const 0
    local.set 2
    local.get 0
    local.set 1
    loop
      local.get 1
      i32.eqz
      if
        local.get 2
        return
      else
        local.get 2
        local.get 1
        i32.const 1
        i32.and
        i32.add
        local.get 1
        i32.const 1
        i32.shr_u
        local.set 1
        local.set 2
        br 1
      end
    end
    unreachable
  )
  (func (export "main") (result i32)
    i32.const 42      ;; popcount(42) = popcount(0b101010) = 3
    call $popcount
    i32.const 3
    i32.ne)
)
