(module
  (tag $e0)
  (func (export "br-unreachable") (param i32) (result i32)
    (block $h
      (br $h)
      (try_table (result i32) (catch $e0 $h)
        (if (i32.eqz (local.get 0)) (then (throw $e0)) (else))
        (i32.const 111)
      )
      (drop)
    )
    (block $g
      (return
        (try_table (result i32) (catch $e0 $g)
          (if (i32.eqz (local.get 0)) (then (throw $e0)) (else))
          (i32.const 222)
        )
      )
    )
    (i32.const 77)
  )
)

(assert_return (invoke "br-unreachable" (i32.const 0)) (i32.const 77))
(assert_return (invoke "br-unreachable" (i32.const 1)) (i32.const 222))
