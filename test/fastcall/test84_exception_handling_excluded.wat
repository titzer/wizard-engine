;; try_table/catch/throw is unsupported in fast functions (unimplemented
;; runtime unwind contract, was a crash). Compilation now bails out cleanly;
;; default (non-eager) execution falls back to interpretation and runs fine.
(module
  (type $f1 (func))
  (tag $t (param i32))
  (func $throw
    (throw $t (i32.const 47))
  )
  (elem declare func $throw)
  (func $f (export "fast:f") (param i32) (result i32)
    (block (result i32)
      (try_table (catch $t 0)
        (call $throw)
      )
      (i32.const 22)
    )
  )
  (func (export "main") (result i32)
    i32.const 44
    call $f
  )
)
