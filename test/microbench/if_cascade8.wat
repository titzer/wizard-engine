;; INNER_CALIBRATION = 770
(module
 (func $main (export "main")
    (local $x i32)
    (local $y i32)

    (local.set $y (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $l
      (local.set $y (i32.sub (local.get $y) (i32.const 1)))
      
      (if (i32.and (local.get $y) (i32.const 0x1)) (then nop) (else nop))
      (if (i32.and (local.get $y) (i32.const 0x2)) (then nop) (else nop))
      (if (i32.and (local.get $y) (i32.const 0x4)) (then nop) (else nop))
      (if (i32.and (local.get $y) (i32.const 0x8)) (then nop) (else nop))
      (if (i32.and (local.get $y) (i32.const 0x10)) (then nop) (else nop))
      (if (i32.and (local.get $y) (i32.const 0x20)) (then nop) (else nop))
      (if (i32.and (local.get $y) (i32.const 0x40)) (then nop) (else nop))
      (if (i32.and (local.get $y) (i32.const 0x80)) (then nop) (else nop))

      (br_if $l (local.get $y))
    )
 )
 (export "_start" (func $main))
)
