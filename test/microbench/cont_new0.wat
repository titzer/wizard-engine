;; INNER_CALIBRATION = 4800
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (func $empty) (elem declare func $empty)
  (func $main (export "main")
    (local $i i32)
    (local.set $i (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $l
      (cont.new $c1 (ref.func $empty))
      (drop)
      (local.tee $i (i32.sub (local.get $i) (i32.const 1)))
      (br_if $l)
    )
  )

  (func $start (export "_start")
    (call $main)
  )
)
