;; Test inlined functions with explicit RETURN, including nested control flow
;; and paths where extra values are on the stack at the time of return.
(module
  ;; Two levels of nested ifs; in the early-return path, 2*a is an extra value
  ;; on the value stack below the returned a+b.
  (func $weighted (param i32) (param i32) (result i32)
    block (result i32)
      local.get 0
      i32.const 2
      i32.mul           ;; [2a] -- extra below when early return fires
      block
        local.get 0
        i32.const 0
        i32.gt_s
        if
          local.get 1
          i32.const 0
          i32.gt_s
          if
            ;; both positive: return a+b; 2a is extra on stack
            local.get 0
            local.get 1
            i32.add
            return
          end
        end
      end
      local.get 1
      i32.add           ;; fallthrough: 2a+b
    end
  )

  ;; Clamp x to [lo, hi]; two levels of nesting, returns on multiple paths.
  (func $clamp (param i32) (param i32) (param i32) (result i32)
    local.get 0
    local.get 1
    i32.lt_s
    if
      local.get 1
      return
    end
    local.get 0
    local.get 2
    i32.gt_s
    if
      local.get 2
      return
    end
    local.get 0
  )

  (func (export "main") (result i32)
    i32.const 3
    i32.const 4
    call $weighted
    i32.const 7         ;; both positive: 3+4=7
    i32.ne

    i32.const 3
    i32.const -1
    call $weighted
    i32.const 5         ;; b<=0: 2*3+(-1)=5
    i32.ne
    i32.or

    i32.const -1
    i32.const 4
    call $weighted
    i32.const 2         ;; a<=0: 2*(-1)+4=2
    i32.ne
    i32.or

    i32.const 5
    i32.const 0
    i32.const 10
    call $clamp
    i32.const 5
    i32.ne
    i32.or

    i32.const -3
    i32.const 0
    i32.const 10
    call $clamp
    i32.const 0
    i32.ne
    i32.or

    i32.const 15
    i32.const 0
    i32.const 10
    call $clamp
    i32.const 10
    i32.ne
    i32.or
  )
)
