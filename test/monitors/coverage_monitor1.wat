(module
 (func $f1 (export "main")
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

 (export "_start" (func $f1))
)
