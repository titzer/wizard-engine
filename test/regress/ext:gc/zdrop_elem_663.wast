;; A dropped element segment behaves like a zero-length segment, both for the
;; GC instructions (array.new_elem, array.init_elem) and for table.init.
(module
  (type $f (func (result i32)))
  (type $a (array (mut (ref null $f))))
  (table $t 4 funcref)

  (func $one (type $f) (i32.const 1))
  (func $two (type $f) (i32.const 2))
  (elem $e (ref $f) (ref.func $one) (ref.func $two) (ref.func $one) (ref.func $two))

  (func (export "drop") (elem.drop $e))

  ;; array.new_elem
  (func (export "new_elem") (param i32 i32) (result i32)
    (array.len (array.new_elem $a $e (local.get 0) (local.get 1))))

  ;; array.init_elem
  (func (export "init_elem") (param i32 i32 i32) (result i32)
    (local $x (ref $a))
    (local.set $x (array.new_default $a (i32.const 4)))
    (array.init_elem $a $e (local.get $x) (local.get 0) (local.get 1) (local.get 2))
    (if (result i32) (ref.is_null (array.get $a (local.get $x) (i32.const 0)))
      (then (i32.const -1))
      (else (call_ref $f (array.get $a (local.get $x) (i32.const 0))))))

  ;; table.init
  (func (export "table_init") (param i32 i32 i32) (result i32)
    (table.init $t $e (local.get 0) (local.get 1) (local.get 2))
    (if (result i32) (ref.is_null (table.get $t (i32.const 0)))
      (then (i32.const -1))
      (else (call_indirect $t (type $f) (i32.const 0)))))
)

;; Before the drop, all of these work on the segment's contents.
(assert_return (invoke "new_elem" (i32.const 0) (i32.const 4)) (i32.const 4))
(assert_return (invoke "init_elem" (i32.const 0) (i32.const 0) (i32.const 4)) (i32.const 1))
(assert_return (invoke "table_init" (i32.const 0) (i32.const 0) (i32.const 4)) (i32.const 1))

(invoke "drop")

;; A second drop is a no-op.
(invoke "drop")

;; Zero-length accesses at offset 0 of a dropped segment are in bounds.
(assert_return (invoke "new_elem" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "init_elem" (i32.const 0) (i32.const 0) (i32.const 0)) (i32.const -1))
(assert_return (invoke "init_elem" (i32.const 4) (i32.const 0) (i32.const 0)) (i32.const -1))
(assert_return (invoke "table_init" (i32.const 0) (i32.const 0) (i32.const 0)) (i32.const 1))

;; Any non-zero length, or a non-zero source offset, is out of bounds.
(assert_trap (invoke "new_elem" (i32.const 0) (i32.const 1)) "out of bounds table access")
(assert_trap (invoke "new_elem" (i32.const 1) (i32.const 0)) "out of bounds table access")
(assert_trap (invoke "new_elem" (i32.const 0) (i32.const 4)) "out of bounds table access")
(assert_trap (invoke "init_elem" (i32.const 0) (i32.const 0) (i32.const 1)) "out of bounds table access")
(assert_trap (invoke "init_elem" (i32.const 0) (i32.const 1) (i32.const 0)) "out of bounds table access")
(assert_trap (invoke "init_elem" (i32.const 0) (i32.const 0) (i32.const 4)) "out of bounds table access")
(assert_trap (invoke "table_init" (i32.const 0) (i32.const 0) (i32.const 1)) "out of bounds table access")
(assert_trap (invoke "table_init" (i32.const 0) (i32.const 1) (i32.const 0)) "out of bounds table access")
(assert_trap (invoke "table_init" (i32.const 0) (i32.const 0) (i32.const 4)) "out of bounds table access")

;; Destination bounds are still checked against a dropped segment.
(assert_trap (invoke "init_elem" (i32.const 5) (i32.const 0) (i32.const 0)) "out of bounds array access")
(assert_trap (invoke "table_init" (i32.const 5) (i32.const 0) (i32.const 0)) "out of bounds table access")
