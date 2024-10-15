(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (type $f2 (func (param i32)))
  (type $c2 (cont $f2))
  (tag $e (param i64))
  (tag $f (param i64))
  
  (func $s (param i32)
    (if (i32.lt_s (local.get 0) (i32.const 0))
      (then (suspend $f (i64.extend_i32_s (local.get 0))))
      (else (suspend $e (i64.extend_i32_s (local.get 0))))
   )
  )
  (elem declare func $s)
  (func (export "main") (param i32) (result i64)
    (block (result i64 (ref null $c1))
      (block (result i64 (ref null $c1))
        (resume $c2 (on $e 0) (on $f 1) (local.get 0)
          (cont.new $c2 (ref.func $s)))
        (i64.const 11)
        (ref.null $c1)
      )
      ;; $e
      drop
      (return (i64.sub (i64.const -1000)))
    )
    ;; $f
    drop
    (return (i64.sub (i64.const -2000)))
  )
)

(assert_return (invoke "main" (i32.const -23)) (i64.const 1977))
(assert_return (invoke "main" (i32.const -43)) (i64.const 1957))

(assert_return (invoke "main" (i32.const 23)) (i64.const 1023))
(assert_return (invoke "main" (i32.const 43)) (i64.const 1043))
