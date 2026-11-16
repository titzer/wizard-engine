;; Test: each suspended continuation holds the previous one in a local, so compressed
;; stacks refer to other compressed stacks.
(module
  (type $fv (func (result i32)))
  (type $cv (cont $fv))
  (type $fk (func (param (ref null $cv)) (result i32)))
  (type $ck (cont $fk))
  ;; A worker suspends, receiving nothing, and yields its predecessor when resumed.
  (tag $hold)
  (tag $give (param (ref null $cv)))

  (global $count (mut i32) (i32.const 0))

  (func $worker (type $fk)
    (local $id i32)
    (local.set $id (global.get $count))
    (global.set $count (i32.add (global.get $count) (i32.const 1)))
    (suspend $hold)
    (suspend $give (local.get 0))
    (local.get $id)
  )
  (elem declare func $worker)

  (func (export "main") (param $n i32) (result i64)
    (local $i i32) (local $k (ref null $cv)) (local $prev (ref null $cv)) (local $sum i64)
    (global.set $count (i32.const 0))
    ;; Build: each new worker holds the previous suspended continuation.
    (loop $build
      (block $h (result (ref $cv))
        (drop (resume $ck (on $hold $h) (local.get $k) (cont.new $ck (ref.func $worker))))
        (unreachable)
      )
      (local.set $k)
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $build (i32.lt_u (local.get $i) (local.get $n)))
    )
    ;; Unwind: resume the newest; it gives back its predecessor, then finishes with its id.
    (loop $unwind
      (block $g (result (ref null $cv) (ref $cv))
        (drop (resume $cv (on $give $g) (local.get $k)))
        (unreachable)
      )
      (local.set $k)
      (local.set $prev)
      (local.set $sum (i64.add (local.get $sum) (i64.extend_i32_u (resume $cv (local.get $k)))))
      (local.set $k (local.get $prev))
      (br_if $unwind (i32.eqz (ref.is_null (local.get $k))))
    )
    (local.get $sum)
  )
)

(assert_return (invoke "main" (i32.const 1)) (i64.const 0))
(assert_return (invoke "main" (i32.const 4)) (i64.const 6))
(assert_return (invoke "main" (i32.const 20000)) (i64.const 199990000))
