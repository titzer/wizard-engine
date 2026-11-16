;; Exercises every stack-switching instruction and the interesting control shapes:
;; multi-clause handlers, a tag with a payload, suspension through an intermediate stack,
;; cont.bind, switch, both resume_throw forms, deep frames, abandoned continuations, and a
;; declared tag that nothing uses.
;; Build with: wasm-as --all-features test/monitors/ss_all.wat -o test/monitors/ss_all.wasm
(module
  ;; what remains of a task after it suspends
  (type $fv (func))
  (type $cv (cont $fv))
  ;; a task that still needs one i32, for cont.bind
  (type $fi (func (param i32)))
  (type $ci (cont $fi))

  ;; switch plumbing: main -> $from -> $to -> $from -> main
  (type $f0 (func (result i32 i32 i32)))
  (type $c0 (cont $f0))
  (type $f1 (func (param i32) (result i32 i32 i32)))
  (type $c1 (cont $f1))
  (type $f4 (func (param (ref null $c0)) (result i32 i32 i32)))
  (type $c4 (cont $f4))
  (type $f2 (func (param i32 i32 i32 (ref null $c4)) (result i32 i32 i32)))
  (type $c2 (cont $f2))
  (type $f3 (func (param i32 i32 i32 (ref null $c2)) (result i32 i32 i32)))
  (type $c3 (cont $f3))

  (tag $yield (param i32))   ;; carries a payload
  (tag $ping)                ;; carries nothing
  (tag $abort (param i32))   ;; thrown into a continuation
  (tag $e (result i32 i32 i32))
  (tag $unused (param i64))  ;; declared, never named by any instruction

  (global $sum (mut i32) (i32.const 0))
  (global $caught (mut i32) (i32.const 0))
  (global $deep (mut i32) (i32.const 0))

  ;; --- tasks ---------------------------------------------------------------

  ;; yields through a tag with a payload, and once through a tag without one
  (func $gen (local $i i32)
    (loop $l
      (suspend $yield (local.get $i))
      (suspend $ping)
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (i32.const 3)))
    )
  )
  (elem declare func $gen)

  ;; suspends once; resumed with no handler in scope, so it unwinds through its resumer
  (func $inner (suspend $ping))
  (elem declare func $inner)
  (func $outer (resume $cv (cont.new $cv (ref.func $inner))))
  (elem declare func $outer)

  ;; four frames deep before suspending, with live values in each frame
  (func $down (param $n i32) (local $a i32)
    (local.set $a (i32.mul (local.get $n) (i32.const 3)))
    (if (i32.eqz (local.get $n))
      (then (suspend $ping))
      (else (call $down (i32.sub (local.get $n) (i32.const 1))))
    )
    (global.set $deep (i32.add (global.get $deep) (local.get $a)))
  )
  (func $deepTask (call $down (i32.const 4)))
  (elem declare func $deepTask)

  ;; needs one i32, supplied by cont.bind before it ever runs
  (func $bound (param $a i32)
    (global.set $sum (i32.add (global.get $sum) (local.get $a)))
    (suspend $ping)
  )
  (elem declare func $bound)

  ;; catches whatever is thrown into it at its suspension point
  (func $catcher
    (block $handled
      (try_table (catch_all $handled)
        (suspend $ping)
      )
      (return)
    )
    (global.set $caught (i32.add (global.get $caught) (i32.const 1)))
  )
  (elem declare func $catcher)

  ;; plain task for the many-continuations phase
  (func $task (suspend $ping))
  (elem declare func $task)

  ;; switch peers
  (func $from (param $i i32) (result i32 i32 i32)
    (i32.add (local.get $i) (i32.const 100))
    (i32.add (local.get $i) (i32.const 200))
    (i32.add (local.get $i) (i32.const 300))
    (switch $c3 $e (cont.new $c3 (ref.func $to)))
    (drop)
    (return)
  )
  (elem declare func $from)
  (func $to (param $a i32) (param $b i32) (param $c i32) (param $cont (ref null $c2)) (result i32 i32 i32)
    (i32.add (local.get $a) (i32.const 10))
    (i32.add (local.get $b) (i32.const 20))
    (i32.add (local.get $c) (i32.const 30))
    (switch $c2 $e (local.get $cont))
    (unreachable)
  )
  (elem declare func $to)

  ;; produces an exception reference for $abort
  (func $mkexn (result exnref) (local $x exnref)
    (block $b (result i32 exnref)
      (try_table (catch_ref $abort $b)
        (throw $abort (i32.const 7))
      )
      (unreachable)
    )
    local.set $x
    drop
    local.get $x
  )

  ;; --- driver --------------------------------------------------------------

  (func (export "main") (local $k (ref null $cv)) (local $i i32)
    ;; 1. generator: a resume site with two handler clauses, one tag carrying a payload
    (local.set $k (cont.new $cv (ref.func $gen)))
    (block $done
      (loop $l
        (block $hp (result (ref null $cv))          ;; $ping: just the continuation
          (block $hy (result i32 (ref null $cv))    ;; $yield: payload and continuation
            (resume $cv (on $yield $hy) (on $ping $hp) (local.get $k))
            (br $done)                              ;; the generator finished
          )
          local.set $k
          global.get $sum
          i32.add
          global.set $sum
          br $l
        )
        local.set $k
        br $l
      )
    )

    ;; 2. suspension that crosses an intermediate stack, then runs to completion
    (local.set $k (cont.new $cv (ref.func $outer)))
    (loop $l2
      (block $h2 (result (ref null $cv))
        (resume $cv (on $ping $h2) (local.get $k))
        (ref.null $cv)
      )
      local.set $k
      local.get $k
      ref.is_null
      i32.eqz
      br_if $l2
    )

    ;; 3. cont.bind supplies the argument, then the task runs and suspends
    (local.set $k
      (cont.bind $ci $cv (i32.const 5) (cont.new $ci (ref.func $bound))))
    (block $h3 (result (ref null $cv))
      (resume $cv (on $ping $h3) (local.get $k))
      (ref.null $cv)
    )
    (drop)

    ;; 4. switch round trip
    (i32.const 0)
    (resume $c1 (on $e switch) (cont.new $c1 (ref.func $from)))
    (drop) (drop) (drop)

    ;; 5. resume_throw into a suspended continuation, caught there
    (block $h5 (result (ref null $cv))
      (resume $cv (on $ping $h5) (cont.new $cv (ref.func $catcher)))
      (ref.null $cv)
    )
    local.set $k
    (resume_throw $cv $abort (i32.const 1) (local.get $k))

    ;; 6. resume_throw_ref with a caught exception reference
    (block $h6 (result (ref null $cv))
      (resume $cv (on $ping $h6) (cont.new $cv (ref.func $catcher)))
      (ref.null $cv)
    )
    local.set $k
    (resume_throw_ref $cv (call $mkexn) (local.get $k))

    ;; 7. deep frames: suspend four frames in, then resume to completion
    (local.set $k (cont.new $cv (ref.func $deepTask)))
    (block $h7 (result (ref null $cv))
      (resume $cv (on $ping $h7) (local.get $k))
      (ref.null $cv)
    )
    local.set $k
    (block $h8 (result (ref null $cv))
      (resume $cv (on $ping $h8) (local.get $k))
      (ref.null $cv)
    )
    (drop)

    ;; 8. eight continuations created, resumed once, then abandoned while suspended
    (local.set $i (i32.const 0))
    (loop $l3
      (block $h9 (result (ref null $cv))
        (resume $cv (on $ping $h9) (cont.new $cv (ref.func $task)))
        (ref.null $cv)
      )
      (drop)
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l3 (i32.lt_u (local.get $i) (i32.const 8)))
    )
  )
)
