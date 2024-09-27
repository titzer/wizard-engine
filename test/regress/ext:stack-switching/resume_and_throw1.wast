(module
  (type $f1 (func))
  (type $c1 (cont $f1))
  (tag $t (param i32))
  (func $throw
    (throw $t (i32.const 47))
  )
  (elem declare func $throw)
  (func (export "main") (param i32) (result i32)
    (try_table (catch $t 0)
      (resume
        $c1
       (cont.new $c1 (ref.func $throw)))
    )
    i32.const 42 ;; unreachable
  )
)

(assert_return (invoke "main" (i32.const 44)) (i32.const 47))
