;; INNER_CALIBRATION = 71000

(module
  (func $permute_tail (param $n i32) (param $a i32) (param $b i32)
                      (param $c i32) (param $d i32)
                      (result i32) (result i32) (result i32) (result i32)
    ;; if (n == 0) return (a, b, c, d)
    local.get $n
    i32.eqz
    if (result i32 i32 i32 i32)
      local.get $a
      local.get $b
      local.get $c
      local.get $d
    else
      ;; return_call with rotated params
      local.get $n
      i32.const 1
      i32.sub
      local.get $b
      local.get $c
      local.get $d
      local.get $a
      return_call $permute_tail
    end
  )

  (func $permute (param $n i32)
                 (result i32) (result i32) (result i32) (result i32)
    ;; start with (1, 2, 3, 4)
    local.get $n
    i32.const 1
    i32.const 2
    i32.const 3
    i32.const 4
    return_call $permute_tail
  )

  (func $main (export "main")
    (local $a i32) (local $b i32) (local $c i32) (local $d i32) (local $hash i32)

    ;; Call permutation
    (call $permute (i32.const 1000 (;$INNER_ITERATIONS;)))
    ;; Receive results into locals
    local.set $d
    local.set $c
    local.set $b
    local.set $a

    ;; Compute hash = (((a * 17 + b) * 17 + c) * 17 + d)
    local.get $a
    i32.const 17
    i32.mul
    local.get $b
    i32.add
    i32.const 17
    i32.mul
    local.get $c
    i32.add
    i32.const 17
    i32.mul
    local.get $d
    i32.add
    local.set $hash

    ;; Compare against expected
    local.get $hash
    i32.const 5546
    i32.ne
    if
      unreachable
    end
  )
)
