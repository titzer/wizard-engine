;; INNER_CALIBRATION = 12000
(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $e)
  (func $ret1
    (local $i i32)
    (local.set $i (i32.const 1 (;$INNER_ITERATIONS;)))
    (loop $t
      (suspend $e)
      (local.tee $i (i32.sub (local.get $i) (i32.const 1)))
      (br_if $t)
    )
  )
  (elem declare func $ret1)
  (func $main (export "main")
    (cont.new $c1 (ref.func $ret1))
    (loop $l (param (ref null $c1))
      (resume $c1 (on $e $l))
    )
  )
  
  (func $start (export "_start")
    (call $main)
  )
)
