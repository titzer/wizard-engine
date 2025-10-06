(module
  (type $f1 (func))
  (tag $t (param i32))
  (func $throw
    (throw $t (i32.const 99))
  )
  (elem declare func $throw)

  (func (export "main") (param i32) (result i32)
    (local i32 i64) ;; a couple of locals

    ;; initialize locals so they’re nontrivial
    (local.set 1 (i32.const 77777))
    (local.set 2 (i64.const 88888))

    ;; put some junk on the stack before entering try_table
    (local.get 1)
    (local.get 2)

    (try_table (param i32 i64) (result i32) (catch $t 0)
      ;; at this point, stack has 77777, 88888 on it
      (call $throw)
      drop
      drop
      ;; pop if throw didn't
      i32.const 42
    )
  )
)

(assert_return (invoke "main" (i32.const 44)) (i32.const 99))
