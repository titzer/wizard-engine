;;! gc = true

;; Structs and arrays with narrowed subtypes created by constant expressions in globals and
;; element segments, accessed through their supertypes.
(module
  (type $leaf (struct (field i32)))
  (type $sup (sub (struct (field anyref) (field i64) (field (mut i32)))))
  (type $sub (sub $sup (struct (field (ref $leaf)) (field i64) (field (mut i32)))))
  (type $anysup (sub (array anyref)))
  (type $leafsub (sub $anysup (array (ref $leaf))))

  (global $gsub (ref $sup) (struct.new $sub (struct.new $leaf (i32.const 7)) (i64.const 0x1122334455667788) (i32.const 99)))
  (global $gsup (ref $sup) (struct.new $sup (ref.i31 (i32.const 42)) (i64.const -1) (i32.const 98)))
  (global $garr (ref $anysup) (array.new_fixed $leafsub 2 (struct.new $leaf (i32.const 1)) (struct.new $leaf (i32.const 2))))
  (elem $e (ref $sup)
    (item (struct.new $sub (struct.new $leaf (i32.const 8)) (i64.const 5) (i32.const 6)))
    (item (struct.new $sup (ref.i31 (i32.const 9)) (i64.const 10) (i32.const 11))))
  (table $t 2 (ref null $sup))

  ;; Encodes an anyref as an i32: null -> -1, i31 -> its value, $leaf -> 1000 + its field.
  (func $val (param anyref) (result i32)
    (if (result i32) (ref.is_null (local.get 0))
      (then (i32.const -1))
      (else
        (if (result i32) (ref.test (ref i31) (local.get 0))
          (then (i31.get_s (ref.cast (ref i31) (local.get 0))))
          (else (i32.add (i32.const 1000) (struct.get $leaf 0 (ref.cast (ref $leaf) (local.get 0)))))))))
  (func $fields (param $o (ref $sup)) (result i32 i64 i32)
    (call $val (struct.get $sup 0 (local.get $o)))
    (struct.get $sup 1 (local.get $o))
    (struct.get $sup 2 (local.get $o)))

  (func (export "gsub") (result i32 i64 i32) (call $fields (global.get $gsub)))
  (func (export "gsup") (result i32 i64 i32) (call $fields (global.get $gsup)))
  (func (export "garr") (param i32) (result i32)
    (call $val (array.get $anysup (global.get $garr) (local.get 0))))
  (func (export "init") (table.init $t $e (i32.const 0) (i32.const 0) (i32.const 2)))
  (func (export "table") (param i32) (result i32 i64 i32)
    (call $fields (ref.as_non_null (table.get $t (local.get 0)))))
)
(assert_return (invoke "gsub") (i32.const 1007) (i64.const 0x1122334455667788) (i32.const 99))
(assert_return (invoke "gsup") (i32.const 42) (i64.const -1) (i32.const 98))
(assert_return (invoke "garr" (i32.const 0)) (i32.const 1001))
(assert_return (invoke "garr" (i32.const 1)) (i32.const 1002))
(assert_return (invoke "init"))
(assert_return (invoke "table" (i32.const 0)) (i32.const 1008) (i64.const 5) (i32.const 6))
(assert_return (invoke "table" (i32.const 1)) (i32.const 9) (i64.const 10) (i32.const 11))
