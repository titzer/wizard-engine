(module
  ;; Shared signature for the resume entry point.
  (type $f1 (func (param i32 i32 i32 i32) (result i32 i32)))
  (type $c1 (cont $f1))

  (tag $t (param i32 i32))

  ;; Builds ~10 frames on each stack: 4 increments of x, 4 of y.
  (func $rec_a (param $stackIdx i32) (param $x i32) (param $y i32) (param $depth i32) (result i32 i32)
    (if (result i32 i32) (i32.eqz (local.get $depth))
      (then (call $bottom (local.get $stackIdx) (local.get $x) (local.get $y)))
      (else
        (call $rec_b
          (local.get $stackIdx)
          (i32.add (local.get $x) (i32.const 1))
          (local.get $y)
          (i32.sub (local.get $depth) (i32.const 1))))))

  (func $rec_b (param $stackIdx i32) (param $x i32) (param $y i32) (param $depth i32) (result i32 i32)
    (if (result i32 i32) (i32.eqz (local.get $depth))
      (then (call $bottom (local.get $stackIdx) (local.get $x) (local.get $y)))
      (else
        (call $rec_a
          (local.get $stackIdx)
          (local.get $x)
          (i32.add (local.get $y) (i32.const 1))
          (i32.sub (local.get $depth) (i32.const 1))))))

  ;; At the bottom of each stack: either resume the next stack or throw.
  (func $bottom (param $stackIdx i32) (param $x i32) (param $y i32) (result i32 i32)
    (if (result i32 i32) (i32.eqz (local.get $stackIdx))
      (then (throw $t (local.get $x) (local.get $y)))
      (else
        (resume $c1
          (i32.sub (local.get $stackIdx) (i32.const 1))
          (local.get $x)
          (local.get $y)
          (i32.const 8)
          (cont.new $c1 (ref.func $rec_a))))))

  (elem declare func $rec_a)

  (func (export "main") (result i32 i32)
    (try_table (result i32 i32) (catch $t 0)
      (resume $c1
        (i32.const 9) (i32.const 0) (i32.const 0) (i32.const 8)
        (cont.new $c1 (ref.func $rec_a))))
  )
)

(assert_return (invoke "main") (i32.const 40) (i32.const 40))
