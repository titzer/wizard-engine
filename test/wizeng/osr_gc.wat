(module
  (import "wizeng" "force_gc" (func $gc))
  (func (export "main") (local $i i32)
    ;; the loop tiers up while this frame still holds the interpreter's sidetable pointer
    (loop $l
      (call $gc)
      (br_if $l (i32.lt_u (local.tee $i (i32.add (local.get $i) (i32.const 1))) (i32.const 10))))))
