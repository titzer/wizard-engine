(module
  (type $f1 (func (param i64 f64)))
  (type $c1 (cont $f1))
  (tag $e (param i64 f64))
  (func $t (param i64 f64) (result exnref)
    (block (result i64 f64 exnref)
      (try_table (catch_ref $e 0) (throw $e (local.get 0) (local.get 1)))
      unreachable
    )
    return
  )
  (func $throw (param i64 f64)
    (throw $e (i64.const 666) (f64.const 777))
  )
  (elem declare func $throw)
  (func (export "main") (param i64 f64) (result i64 f64)
    (try_table (catch $e 0)
      (resume_throw_ref
        $c1
	(call $t (local.get 0) (local.get 1))
        (cont.new $c1 (ref.func $throw)))
    )
    i64.const 42 ;; unreachable
    f64.const 47
  )
)

(assert_return (invoke "main" (i64.const -1111) (f64.const 3333)) (i64.const -1111) (f64.const 3333))
(assert_return (invoke "main" (i64.const -2222) (f64.const 4444)) (i64.const -2222) (f64.const 4444))
(assert_return (invoke "main" (i64.const 0x0BAD_F00D_DEAD_BEEF) (f64.const 4444)) (i64.const 0x0BAD_F00D_DEAD_BEEF) (f64.const 4444))
