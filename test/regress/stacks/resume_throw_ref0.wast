;; Test: exceptions thrown into compressed continuations with {resume_throw_ref}, which
;; are caught by some continuations and escape from others.
(module
  (type $f_i (func (result i32)))
  (type $c_i (cont $f_i))
  (type $fi_i (func (param i32) (result i32)))
  (type $ci_i (cont $fi_i))

  (tag $yield)
  (tag $exn (param i32))
  (table $t 0 (ref null $c_i))

  ;; Catches the exception if {x} is even (returning payload + x), otherwise lets it escape.
  (func $worker (param $x i32) (result i32)
    (if (result i32) (i32.and (local.get $x) (i32.const 1))
      (then (suspend $yield) (unreachable))
      (else
        (block $c (result i32)
          (try_table (catch $exn $c) (suspend $yield))
          (unreachable))
        (i32.add (local.get $x))))
  )
  (elem declare func $worker)

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $sum i64) (local $k (ref null $c_i)) (local $e exnref)
    (block $h (result i32 exnref)
      (try_table (catch_ref $exn $h) (throw $exn (i32.const 1000)))
      (unreachable))
    (local.set $e)
    (drop)
    (drop (table.grow $t (ref.null $c_i) (local.get $n)))
    (loop $create
      (block $h (result (ref $c_i))
        (drop (resume $ci_i (on $yield $h) (local.get $i) (cont.new $ci_i (ref.func $worker))))
        (unreachable)
      )
      (local.set $k)
      (table.set $t (local.get $i) (local.get $k))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $create (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.set $i (i32.const 0))
    (loop $throw
      (local.set $sum (i64.add (local.get $sum) (i64.extend_i32_u
        (block $escaped (result i32)
          (try_table (result i32) (catch $exn $escaped)
            (resume_throw_ref $c_i (local.get $e) (table.get $t (local.get $i))))
          (br $escaped (i32.add (i32.const 1))) ;; caught inside: payload + x + 1
        ))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $throw (i32.lt_u (local.get $i) (local.get $n)))
    )
    (local.get $sum)
  )
)

;; Even x: 1000 + x + 1; odd x: 1000 (escaped payload).
(assert_return (invoke "main" (i32.const 2)) (i64.const 2001))
(assert_return (invoke "main" (i32.const 1000)) (i64.const 1250000))
