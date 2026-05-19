;; br_table dispatching to four blocks; each writes to a (ref null $ct) local.
;; Validates that null and non-null cont values both round-trip correctly
;; through the local across multiple SPC merge points.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "main") (param $sel i32) (result i32)
    (local $r (ref null $ct))
    (block $end
      (block $b0
        (block $b1
          (block $b2
            (br_table $b0 $b1 $b2 $end (local.get $sel))
          )
          ;; b2 body
          (local.set $r (cont.new $ct (ref.func $f)))
          (br $end)
        )
        ;; b1 body
        (local.set $r (ref.null $ct))
        (br $end)
      )
      ;; b0 body
      (local.set $r (cont.new $ct (ref.func $f)))
    )
    (ref.is_null (local.get $r))
  )
)

(assert_return (invoke "main" (i32.const 0)) (i32.const 0)) ;; b0 → non-null
(assert_return (invoke "main" (i32.const 1)) (i32.const 1)) ;; b1 → null
(assert_return (invoke "main" (i32.const 2)) (i32.const 0)) ;; b2 → non-null
(assert_return (invoke "main" (i32.const 3)) (i32.const 1)) ;; default $end → r unchanged (null)
