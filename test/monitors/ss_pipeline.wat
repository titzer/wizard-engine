;; A three-stage generator pipeline: a producer yields 1..10, a stage doubles each value and a
;; stage adds one, and main sums the results. Each stage runs on its own stack and pulls from its
;; upstream continuation, which cont.bind supplies before the stage first runs.
;; Build with: wasm-as --all-features test/monitors/ss_pipeline.wat -o test/monitors/ss_pipeline.wasm
(module
  (type $fv (func))
  (type $cv (cont $fv))
  ;; a stage that still needs its upstream continuation
  (type $fs (func (param (ref null $cv))))
  (type $cs (cont $fs))

  (tag $yield (param i32))

  (global $sum (mut i32) (i32.const 0))

  (func $producer (local $i i32)
    (local.set $i (i32.const 1))
    (loop $l
      (suspend $yield (local.get $i))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.le_u (local.get $i) (i32.const 10)))
    )
  )
  (elem declare func $producer)

  ;; pulls each value from {up} and yields it doubled
  (func $double (param $up (ref null $cv))
    (block $done
      (loop $l
        (block $h (result i32 (ref null $cv))
          (resume $cv (on $yield $h) (local.get $up))
          (br $done)
        )
        local.set $up
        i32.const 2
        i32.mul
        suspend $yield
        (br $l)
      )
    )
  )
  (elem declare func $double)

  ;; pulls each value from {up} and yields it plus one
  (func $inc (param $up (ref null $cv))
    (block $done
      (loop $l
        (block $h (result i32 (ref null $cv))
          (resume $cv (on $yield $h) (local.get $up))
          (br $done)
        )
        local.set $up
        i32.const 1
        i32.add
        suspend $yield
        (br $l)
      )
    )
  )
  (elem declare func $inc)

  (func (export "main") (local $k (ref null $cv))
    (local.set $k (cont.new $cv (ref.func $producer)))
    (local.set $k (cont.bind $cs $cv (local.get $k) (cont.new $cs (ref.func $double))))
    (local.set $k (cont.bind $cs $cv (local.get $k) (cont.new $cs (ref.func $inc))))
    (block $done
      (loop $l
        (block $h (result i32 (ref null $cv))
          (resume $cv (on $yield $h) (local.get $k))
          (br $done)
        )
        local.set $k
        global.get $sum
        i32.add
        global.set $sum
        (br $l)
      )
    )
  )
)
