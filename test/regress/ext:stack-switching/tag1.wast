;; Test that tags can use all basic primitives
(module
  (tag $e (param i32 i64) (result i32 i64))
  (tag $f (param f32 f64) (result f32 f64))
  (tag $g (param v128) (result v128))
)
