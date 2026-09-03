;; A fast:-exported function using try_table/catch to handle a thrown tag
;; from a called function.
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
