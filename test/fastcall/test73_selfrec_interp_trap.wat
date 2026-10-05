;; A fast:-exported function, invoked via call_indirect, that recursively
;; calls itself (a direct call, so rewritten to FAST_CALLn) until an
;; out-of-bounds load traps.
(module
  (memory 1)
  (table 1 funcref)
  (type $t (func (param i32) (result i32)))
  (elem (i32.const 0) $F)
  (func $F (export "fast:F") (type $t) (param $n i32) (result i32)
    (if (result i32) (i32.eqz (local.get $n))
      (then
        (i32.load (i32.const 0x7fffffff)))
      (else
        (call $F (i32.sub (local.get $n) (i32.const 1))))))
  (func (export "main") (result i32)
    (call_indirect (type $t) (i32.const 3) (i32.const 0)))
)
