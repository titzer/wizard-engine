;; struct.new immediately followed by struct.get; regresses the missing
;; regs.instance reload after a fast-mode runtime call (was MEMORY_OOB).
(module
  (type $s (struct (field i32)))
  (func $f (export "fast:f") (param i32) (result i32)
    (struct.get $s 0 (struct.new $s (local.get 0)))
  )
  (func (export "main") (result i32)
    i32.const 5
    call $f
  )
)
