(module
  (type $f1 (func (param i64 f64)))
  (type $c1 (cont $f1))
  (tag $t (param i64 f64))
  (func $throw (param i64 f64)
    (throw $t (local.get 0) (local.get 1))
  )
  (elem declare func $throw)
  (func (export "main") (param i64 f64) (result i64 f64)
    (try_table (catch $t 0)
      (resume
        $c1
	(local.get 0)
	(local.get 1)
        (cont.new $c1 (ref.func $throw)))
    )
    i64.const 42 ;; unreachable
    f64.const 47
  )
)

(assert_return (invoke "main" (i64.const -1111) (f64.const 3333)) (i64.const -1111) (f64.const 3333))
(assert_return (invoke "main" (i64.const 0xFACE_B00C) (f64.const 3333)) (i64.const 0xFACE_B00C) (f64.const 3333))
