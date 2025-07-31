(module
  (func (export "main")
        (call $start)
	(call $f1)
  )
  (func $unreachable (param i32) (result i32) (i32.const 150))
  (func $start (export "_start")
        (local $cnt i32)
        (local $cnt2 i32)
        (local.set $cnt (i32.const 13))
        (loop $l
              (if (i32.const 1)
                (then
                  (local.set $cnt2 (i32.const 3))
                )
                (else
                  (local.set $cnt2 (i32.const 5))
                )
              )
              (loop $l2
                    (local.set $cnt2 (i32.sub (local.get $cnt2) (i32.const 1)))
                    (br_if $l2 (local.get $cnt2))
              )
              (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
              (br_if $l (local.get $cnt))
        )
        (local.set $cnt (i32.const 12))
        (loop $l3
              (local.set $cnt (i32.sub (local.get $cnt) (i32.const 1)))
              (br_if $l3 (local.get $cnt))
        )
  )

 (func $f1
    (local $x i32)
    (local $y i32)

    (local.set $y (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $l
      (local.set $y (i32.sub (local.get $y) (i32.const 1)))

      (br_if $l (i32.eq (local.get $y) (i32.const 1)))
      (br_if $l (local.get $y))
    )

    (call $f2 (i32.const 1))
    (call $f3 (i32.const 0) (i32.const 1))
 )
 (func $f2 (param i32)
   (if (local.get 0)
     (then nop nop)
     (else nop)
   )
 )
 (func $f3 (param i32 i32)
   (br_if 0 (local.get 0))
   nop
   (br_if 0 (local.get 1))
   nop
 )
 (func $f4)
 (func $f5 unreachable)
)
