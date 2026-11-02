;; A round-robin scheduler over eight workers kept in a table of continuations. Worker {n} yields
;; {n} times before it finishes, so the run queue shrinks round by round.
;; Build with: wasm-as --all-features test/monitors/ss_scheduler.wat -o test/monitors/ss_scheduler.wasm
(module
  (type $fv (func))
  (type $cv (cont $fv))
  ;; a worker that still needs its yield count
  (type $fw (func (param i32)))
  (type $cw (cont $fw))

  (tag $yield)

  (table $queue 8 (ref null $cv))
  (global $steps (mut i32) (i32.const 0))

  (func $worker (param $n i32)
    (loop $l
      (if (i32.eqz (local.get $n)) (then (return)))
      (global.set $steps (i32.add (global.get $steps) (i32.const 1)))
      (suspend $yield)
      (local.set $n (i32.sub (local.get $n) (i32.const 1)))
      (br $l)
    )
  )
  (elem declare func $worker)

  (func (export "main") (local $i i32) (local $live i32) (local $k (ref null $cv))
    ;; spawn: worker i yields i+1 times
    (loop $spawn
      (table.set $queue (local.get $i)
        (cont.bind $cw $cv (i32.add (local.get $i) (i32.const 1)) (cont.new $cw (ref.func $worker))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $spawn (i32.lt_u (local.get $i) (i32.const 8)))
    )
    ;; run rounds until every worker has finished
    (loop $round
      (local.set $live (i32.const 0))
      (local.set $i (i32.const 0))
      (loop $next
        (local.set $k (table.get $queue (local.get $i)))
        (if (i32.eqz (ref.is_null (local.get $k)))
          (then
            (block $finished
              (block $h (result (ref null $cv))
                (resume $cv (on $yield $h) (local.get $k))
                (table.set $queue (local.get $i) (ref.null $cv))
                (br $finished)
              )
              (local.set $k)
              (table.set $queue (local.get $i) (local.get $k))
              (local.set $live (i32.add (local.get $live) (i32.const 1)))
            )
          )
        )
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $next (i32.lt_u (local.get $i) (i32.const 8)))
      )
      (br_if $round (local.get $live))
    )
  )
)
