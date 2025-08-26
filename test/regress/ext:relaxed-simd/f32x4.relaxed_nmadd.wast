;; Tests for f32x4.relaxed_madd, f32x4.relaxed_nmadd, f64x2.relaxed_madd, and f64x2.relaxed_nmadd.
;; `either` comes from https://github.com/WebAssembly/threads.

(module
    (func (export "f32x4.relaxed_nmadd") (param v128 v128 v128) (result v128) (f32x4.relaxed_nmadd (local.get 0) (local.get 1) (local.get 2)))

    (func (export "f32x4.relaxed_nmadd_cmp") (param v128 v128 v128) (result v128)
          (f32x4.eq
            (f32x4.relaxed_nmadd (local.get 0) (local.get 1) (local.get 2))
            (f32x4.relaxed_nmadd (local.get 0) (local.get 1) (local.get 2))))
)

;; nmadd tests with negated x, same answers are expected.
(assert_return (invoke "f32x4.relaxed_nmadd"
                       (v128.const f32x4 -0x1.000004p+0 -0x1.000004p+0 -0x1.000004p+0 -0x1.000004p+0)
                       (v128.const f32x4 0x1.0002p+0 0x1.0002p+0 0x1.0002p+0 0x1.0002p+0)
                       (v128.const f32x4 -0x1.000204p+0 -0x1.000204p+0 -0x1.000204p+0 -0x1.000204p+0))
               (either (v128.const f32x4 0x1p-37 0x1p-37 0x1p-37 0x1p-37)
                       (v128.const f32x4 0 0 0 0)))
;; nmadd tests with negated y, same answers are expected.
(assert_return (invoke "f32x4.relaxed_nmadd"
                       (v128.const f32x4 0x1.000004p+0 0x1.000004p+0 0x1.000004p+0 0x1.000004p+0)
                       (v128.const f32x4 -0x1.0002p+0 -0x1.0002p+0 -0x1.0002p+0 -0x1.0002p+0)
                       (v128.const f32x4 -0x1.000204p+0 -0x1.000204p+0 -0x1.000204p+0 -0x1.000204p+0))
               (either (v128.const f32x4 0x1p-37 0x1p-37 0x1p-37 0x1p-37)
                       (v128.const f32x4 0 0 0 0)))

;; nmadd tests with negated x, same answers are expected.
(assert_return (invoke "f32x4.relaxed_nmadd_cmp"
                       (v128.const f32x4 -0x1.000004p+0 -0x1.000004p+0 -0x1.000004p+0 -0x1.000004p+0)
                       (v128.const f32x4 0x1.0002p+0 0x1.0002p+0 0x1.0002p+0 0x1.0002p+0)
                       (v128.const f32x4 -0x1.000204p+0 -0x1.000204p+0 -0x1.000204p+0 -0x1.000204p+0))
               (v128.const i32x4 -1 -1 -1 -1))
;; nmadd tests with negated y, same answers are expected.
(assert_return (invoke "f32x4.relaxed_nmadd_cmp"
                       (v128.const f32x4 0x1.000004p+0 0x1.000004p+0 0x1.000004p+0 0x1.000004p+0)
                       (v128.const f32x4 -0x1.0002p+0 -0x1.0002p+0 -0x1.0002p+0 -0x1.0002p+0)
                       (v128.const f32x4 -0x1.000204p+0 -0x1.000204p+0 -0x1.000204p+0 -0x1.000204p+0))
               (v128.const i32x4 -1 -1 -1 -1))
