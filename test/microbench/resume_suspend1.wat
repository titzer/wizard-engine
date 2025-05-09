;; INNER_CALIBRATION = 4800
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e)
  (func $inner
    (local $i i32)
    (local.set $i (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $t
      (local.tee $i (i32.sub (local.get $i) (i32.const 1)))
      (br_if $t)
    )
  )
  (elem declare func $inner)
  (func $middle
    (cont.new $c1 (ref.func $inner))
    (resume $c1)
  )
  (elem declare func $middle)
  (func $main (export "main")
    (cont.new $c1 (ref.func $middle))
    (loop $l (param (ref null $c1))
      (resume $c1 (on $e $l))
    )
  )

  (func $start (export "_start")
    (call $main)
  )
)
