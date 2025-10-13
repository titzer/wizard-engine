(module
  (type $arr (array i31ref))
  (type $s1 (struct))

  (elem $e i31ref
    (ref.i31 (i32.const 0xaa))
    (ref.i31 (i32.const 0xbb))
    (ref.i31 (i32.const 0xcc))
    (ref.i31 (i32.const 0xdd)))

  (func (export "main")
    (local $y i32)

    (local.set $y (i32.const 11 (;$INNER_ITERATIONS;)))
    (loop $l
      (drop (struct.new $s1))
      (drop (struct.new_default $s1))
      (drop (array.new $arr (ref.i31 (i32.const 11)) (i32.const 5)))
      (drop (array.new_default $arr (i32.const 5)))

      (drop (array.new_elem $arr $e (i32.const 1) (i32.const 2)))
    
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
)