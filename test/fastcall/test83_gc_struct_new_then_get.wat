;; A fast:-exported function that allocates a struct and immediately reads
;; a field back from it.
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
