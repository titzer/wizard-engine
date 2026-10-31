;; INNER_CALIBRATION = 1650
;; Casts to a non-final supertype, which requires a subtype check, not just an exact match.
(module
  (type $A (sub (struct (field i32))))
  (type $B (sub $A (struct (field i32) (field i32))))
  (type $C (sub $B (struct (field i32) (field i32) (field i32))))
  (func $main (export "main")
    (local $y i32)

    (local.set $y (i32.const 1 (;$REPEAT;)))
    (loop $l
      (call $cast (struct.new_default $C) (i32.const 165000 (;$INNER_ITERATIONS;)))
      (local.tee $y (i32.sub (local.get $y) (i32.const 1)))
      (br_if $l)
    )
  )
  (func $cast (param anyref i32)
    (block $done
      (loop $l
        (br_if $done (i32.eqz (local.get 1)))
        (drop (ref.cast (ref $B) (local.get 0)))
        (local.set 1 (i32.sub (local.get 1) (i32.const 1)))
        (br $l)
      )
    )
  )
)
