(module
  (type $f1 (func (param i32)))
  (type $c1 (cont $f1))
  (tag $t (param i32))
  (func $throw (param i32)
    (throw $t (local.get 0))
  )
  (elem declare func $throw)
  (func (export "main") (param i32) (result i32)
    (try_table (catch $t 0)
      (resume
        $c1
	(local.get 0)
        (cont.new $c1 (ref.func $throw)))
    )
    i32.const 42 ;; unreachable
  )
)

(assert_return (invoke "main" (i32.const 44)) (i32.const 44))
(assert_return (invoke "main" (i32.const -47)) (i32.const -47))
