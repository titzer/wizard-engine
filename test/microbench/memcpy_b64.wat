;; INNER_CALIBRATION = 266
;; DST_OFFSET = 1024
;; SRC_OFFSET = 2048
;; COPY_SIZE = 256

(module
  (memory (export "memory") i64 1)

  ;; memcpy with baked-in addresses via offset immediates.
  ;; Signature is memcpy(len)
  (func $memcpy (param $len i64)
    (local $i i64)
    (block $exit
      (loop $loop
        (br_if $exit (i64.ge_u (local.get $i) (local.get $len)))
        ;; *(DST_OFFSET + i) = *(SRC_OFFSET + i)
        (i32.store8 offset=1024 (;$DST_OFFSET;)
          (local.get $i)
          (i32.load8_u offset=2048 (;$SRC_OFFSET;) (local.get $i))
        )
        (local.set $i (i64.add (local.get $i) (i64.const 1)))
        (br $loop)
      )
    )
  )

  (func $main (export "main")
    (local $iters i32)
    (local $len i64)

    ;; Loop count for inner timing (script rewrites this)
    (local.set $iters (i32.const 1 (;$INNER_ITERATIONS;)))

    (loop $L
      (call $memcpy (i64.const 256 (;$COPY_SIZE;)))
      (local.tee $iters (i32.sub (local.get $iters) (i32.const 1)))
      (br_if $L)
    )
  )
)

