(module
    (func (export "f64x2.relaxed_nmadd") (param v128 v128 v128) (result v128) (f64x2.relaxed_nmadd (local.get 0) (local.get 1) (local.get 2)))

    (func (export "f64x2.relaxed_nmadd_cmp") (param v128 v128 v128) (result v128)
          (f64x2.eq
            (f64x2.relaxed_nmadd (local.get 0) (local.get 1) (local.get 2))
            (f64x2.relaxed_nmadd (local.get 0) (local.get 1) (local.get 2))))
)

;; nmadd tests with negated x, same answers are expected.
(assert_return (invoke "f64x2.relaxed_nmadd"
                       (v128.const f64x2 -0x1.00000004p+0 -0x1.00000004p+0)
                       (v128.const f64x2 0x1.000002p+0 0x1.000002p+0)
                       (v128.const f64x2 -0x1.00000204p+0 -0x1.00000204p+0))
               (either (v128.const f64x2 0x1p-53 0x1p-53)
                       (v128.const f64x2 0 0)))
;; nmadd tests with negated y, same answers are expected.
(assert_return (invoke "f64x2.relaxed_nmadd"
                       (v128.const f64x2 0x1.00000004p+0 0x1.00000004p+0)
                       (v128.const f64x2 -0x1.000002p+0 -0x1.000002p+0)
                       (v128.const f64x2 -0x1.00000204p+0 -0x1.00000204p+0))
               (either (v128.const f64x2 0x1p-53 0x1p-53)
                       (v128.const f64x2 0 0)))

;; nmadd tests with negated x, same answers are expected.
(assert_return (invoke "f64x2.relaxed_nmadd_cmp"
                       (v128.const f64x2 -0x1.00000004p+0 -0x1.00000004p+0)
                       (v128.const f64x2 0x1.000002p+0 0x1.000002p+0)
                       (v128.const f64x2 -0x1.00000204p+0 -0x1.00000204p+0))
               (v128.const i64x2 -1 -1))
;; nmadd tests with negated y, same answers are expected.
(assert_return (invoke "f64x2.relaxed_nmadd_cmp"
                       (v128.const f64x2 0x1.00000004p+0 0x1.00000004p+0)
                       (v128.const f64x2 -0x1.000002p+0 -0x1.000002p+0)
                       (v128.const f64x2 -0x1.00000204p+0 -0x1.00000204p+0))
               (v128.const i64x2 -1 -1))
