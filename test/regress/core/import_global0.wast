(module definition $M
  (global (export "gm") i32 (i32.const 11))
)


(module instance $I $M)
(register "I" $I)

(module definition $N
  (global $g1 (import "I" "gm") i32)
  (global $g2 i32 (i32.add (global.get $g1) (i32.const 11)))

  (func (export "get") (result i32)
    (global.get $g2)
  )
)

(module instance $J $N)

(assert_return (invoke $J "get") (i32.const 22))
