;; br_on_cast, br_on_cast_fail, and br_on_non_null pass a reference to their target label, so the
;; label's type must end in a reference type, and cannot be empty (#655).
(assert_invalid
  (module (type $s (struct (field i32)))
    (func (result i32)
      (block $l
        (br_on_cast $l anyref (ref $s) (struct.new $s (i32.const 42)))
        (drop) (return (i32.const 111)))
      (i32.const 222)))
  "type mismatch")
(assert_invalid
  (module (type $s (struct (field i32)))
    (func (result i32)
      (block $l
        (br_on_cast_fail $l anyref (ref $s) (struct.new $s (i32.const 42)))
        (drop) (return (i32.const 111)))
      (i32.const 222)))
  "type mismatch")
(assert_invalid
  (module
    (func (param anyref) (result i32)
      (block $l
        (br_on_non_null $l (local.get 0))
        (return (i32.const 111)))
      (i32.const 222)))
  "type mismatch")
;; Branching to the function's (empty) result.
(assert_invalid
  (module (type $s (struct))
    (func (param anyref) (drop (br_on_cast 0 anyref (ref $s) (local.get 0)))))
  "type mismatch")
(assert_invalid
  (module (func (param anyref) (br_on_non_null 0 (local.get 0))))
  "type mismatch")
;; The wrong type, with the right arity, is also invalid.
(assert_invalid
  (module (type $s (struct (field i32)))
    (func (result i32)
      (block $l (result i32)
        (drop (br_on_cast $l anyref (ref $s) (struct.new $s (i32.const 42))))
        (i32.const 111))))
  "type mismatch")

;; Labels ending in a suitable reference type are valid, including with other values before it.
(module
  (type $s (struct (field i32)))
  (func (export "cast") (param anyref) (result i32)
    (block $l (result (ref $s))
      (br_on_cast $l anyref (ref $s) (local.get 0))
      (drop) (return (i32.const 111)))
    (struct.get $s 0))
  (func (export "cast_fail") (param anyref) (result i32)
    (block $l (result anyref)
      (br_on_cast_fail $l anyref (ref $s) (local.get 0))
      (struct.get $s 0) (return))
    (drop) (i32.const 222))
  (func (export "cast_multi") (param anyref) (result i32)
    (block $l (result i32 (ref $s))
      (i32.const 5)
      (local.get 0)
      (br_on_cast $l anyref (ref $s))
      (drop) (drop) (return (i32.const 111)))
    (struct.get $s 0) (i32.add))
  (func (export "non_null") (param anyref) (result i32)
    (block $l (result (ref any))
      (br_on_non_null $l (local.get 0))
      (return (i32.const 111)))
    (drop) (i32.const 222))
  (func (export "cast_s") (result i32) (call 0 (struct.new $s (i32.const 7))))
  (func (export "cast_fail_s") (result i32) (call 1 (struct.new $s (i32.const 8))))
  (func (export "cast_multi_s") (result i32) (call 2 (struct.new $s (i32.const 9))))
  (func (export "non_null_s") (result i32) (call 3 (struct.new $s (i32.const 10))))
)
(assert_return (invoke "cast" (ref.null any)) (i32.const 111))
(assert_return (invoke "cast_fail" (ref.null any)) (i32.const 222))
(assert_return (invoke "cast_multi" (ref.null any)) (i32.const 111))
(assert_return (invoke "non_null" (ref.null any)) (i32.const 111))
(assert_return (invoke "cast_s") (i32.const 7))
(assert_return (invoke "cast_fail_s") (i32.const 8))
(assert_return (invoke "cast_multi_s") (i32.const 14))
(assert_return (invoke "non_null_s") (i32.const 222))
