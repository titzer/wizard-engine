(module
  (type $t (func))
  (func $dummy)
  (elem declare func $dummy)

  (tag $e (param (ref $t)))
  (func $throw (throw $e (ref.func $dummy)))

  (func (export "catch") (result (ref null $t))
    (block $l (result (ref null $t))
      (try_table (catch $e $l) (call $throw))
      (unreachable)
    )
  )
  (func (export "catch_ref1") (result (ref null $t))
    (block $l (result (ref null $t) (ref exn))
      (try_table (catch_ref $e $l) (call $throw))
      (unreachable)
    )
    (drop)
  )
  (func (export "catch_ref2") (result (ref null $t))
    (block $l (result (ref null $t) (ref null exn))
      (try_table (catch_ref $e $l) (call $throw))
      (unreachable)
    )
    (drop)
  )
  (func (export "catch_all_ref1")
    (block $l (result (ref exn))
      (try_table (catch_all_ref $l) (call $throw))
      (unreachable)
    )
    (drop)
  )
  (func (export "catch_all_ref2")
    (block $l (result (ref null exn))
      (try_table (catch_all_ref $l) (call $throw))
      (unreachable)
    )
    (drop)
  )
)

(assert_return (invoke "catch") (ref.func))
(assert_return (invoke "catch_ref1") (ref.func))
(assert_return (invoke "catch_ref2") (ref.func))
(assert_return (invoke "catch_all_ref1"))
(assert_return (invoke "catch_all_ref2"))
