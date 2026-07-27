;; A dropped data segment behaves like a zero-length segment, both for the
;; GC instructions (array.new_data, array.init_data) and for memory.init.
(module
  (type $a (array (mut i8)))
  (memory 1)
  (data $d "abcd")

  (func (export "drop") (data.drop $d))

  ;; array.new_data
  (func (export "new_data") (param i32 i32) (result i32)
    (array.len (array.new_data $a $d (local.get 0) (local.get 1))))

  ;; array.init_data
  (func (export "init_data") (param i32 i32 i32) (result i32)
    (local $x (ref $a))
    (local.set $x (array.new_default $a (i32.const 4)))
    (array.init_data $a $d (local.get $x) (local.get 0) (local.get 1) (local.get 2))
    (array.get_u $a (local.get $x) (i32.const 0)))

  ;; memory.init
  (func (export "memory_init") (param i32 i32 i32) (result i32)
    (memory.init $d (local.get 0) (local.get 1) (local.get 2))
    (i32.load8_u (i32.const 0)))
)

;; Before the drop, all of these work on the segment's contents.
(assert_return (invoke "new_data" (i32.const 0) (i32.const 4)) (i32.const 4))
(assert_return (invoke "init_data" (i32.const 0) (i32.const 0) (i32.const 4)) (i32.const 97))
(assert_return (invoke "memory_init" (i32.const 0) (i32.const 0) (i32.const 4)) (i32.const 97))

(invoke "drop")

;; A second drop is a no-op.
(invoke "drop")

;; Zero-length accesses at offset 0 of a dropped segment are in bounds.
(assert_return (invoke "new_data" (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "init_data" (i32.const 0) (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "init_data" (i32.const 4) (i32.const 0) (i32.const 0)) (i32.const 0))
(assert_return (invoke "memory_init" (i32.const 0) (i32.const 0) (i32.const 0)) (i32.const 97))

;; Any non-zero length, or a non-zero source offset, is out of bounds.
(assert_trap (invoke "new_data" (i32.const 0) (i32.const 1)) "out of bounds memory access")
(assert_trap (invoke "new_data" (i32.const 1) (i32.const 0)) "out of bounds memory access")
(assert_trap (invoke "new_data" (i32.const 0) (i32.const 4)) "out of bounds memory access")
(assert_trap (invoke "init_data" (i32.const 0) (i32.const 0) (i32.const 1)) "out of bounds memory access")
(assert_trap (invoke "init_data" (i32.const 0) (i32.const 1) (i32.const 0)) "out of bounds memory access")
(assert_trap (invoke "init_data" (i32.const 0) (i32.const 0) (i32.const 4)) "out of bounds memory access")
(assert_trap (invoke "memory_init" (i32.const 0) (i32.const 0) (i32.const 1)) "out of bounds memory access")
(assert_trap (invoke "memory_init" (i32.const 0) (i32.const 1) (i32.const 0)) "out of bounds memory access")
(assert_trap (invoke "memory_init" (i32.const 0) (i32.const 0) (i32.const 4)) "out of bounds memory access")

;; Destination bounds are still checked against a dropped segment.
(assert_trap (invoke "init_data" (i32.const 5) (i32.const 0) (i32.const 0)) "out of bounds array access")
(assert_trap (invoke "memory_init" (i32.const 65537) (i32.const 0) (i32.const 0)) "out of bounds memory access")
