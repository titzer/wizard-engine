;; Unreachable code following an unconditional `br`, and a function whose entire body is
;; `unreachable`. Dead straight-line code must not create extra blocks/paths, and a body that
;; only traps must still get a well-formed single-path CFG (it is never called here, so all
;; counts stay 0 -- sum(counts) == 0 == activations).
;;
;; $after_br  : 1 path (the `local.set 999` after the br is dead). Called 3 times -> counts[0]=3
;; $trap_body : 1 path, NEVER called -> counts[0] = 0
;; $trap_tail : `unreachable` as the tail of the else arm; the then arm falls through.
;;              2 paths; only the non-trapping one is executed, twice.
(module
  (func $after_br (export "after_br") (result i32)
    (local $r i32)
    (block $b
      (local.set $r (i32.const 1))
      (br $b)
      (local.set $r (i32.const 999))
    )
    (local.get $r))
  (func $trap_body (export "trap_body") (result i32)
    (unreachable))
  (func $trap_tail (export "trap_tail") (param $x i32) (result i32)
    (if (local.get $x)
      (then (nop))
      (else (unreachable)))
    (i32.const 4))
  (func (export "main")
    (drop (call $after_br))
    (drop (call $after_br))
    (drop (call $after_br))
    (drop (call $trap_tail (i32.const 1)))
    (drop (call $trap_tail (i32.const 1))))
)
