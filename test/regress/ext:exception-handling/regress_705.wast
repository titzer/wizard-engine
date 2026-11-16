(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i64)))
  (type (;3;) (func (param f64)))
  (type (;4;) (func (param v128)))
  (type (;5;) (func (param i64 i32)))
  (type (;6;) (func (param f32 v128 i64)))
  (type (;7;) (func (param i32 i64 f32 f64 v128)))
  (type (;8;) (func (result i64)))
  (tag $tag0 (;0;) (type 0))
  (tag $tag1 (;1;) (type 1) (param i32))
  (tag $tag2 (;2;) (type 2) (param i64))
  (tag $tag3 (;3;) (type 3) (param f64))
  (tag $tag4 (;4;) (type 4) (param v128))
  (tag $tag5 (;5;) (type 5) (param i64 i32))
  (tag $tag6 (;6;) (type 6) (param f32 v128 i64))
  (tag $tag7 (;7;) (type 7) (param i32 i64 f32 f64 v128))
  (global $g (;0;) (mut i64) i64.const 4660)
  (export "x" (func 1))
  (func $e0 (;0;) (type 8) (result i64)
    (local $h i64) (local $vi320 i32) (local $vi321 i32) (local $vi322 i32) (local $vi640 i64) (local $vi641 i64) (local $vi642 i64) (local $vf320 f32) (local $vf321 f32) (local $vf322 f32) (local $vf640 f64) (local $vf641 f64) (local $vf642 f64) (local $vv1280 v128) (local $vv1281 v128) (local $vv1282 v128) (local $x0 exnref) (local $x1 v128) (local $i1 i32) (local $x3 v128) (local $x4 f64)
    local.get $h
    i64x2.splat
    i64x2.extract_lane 0
    block $L13
      try_table (catch_all $L13) ;; label = @2
        local.get $vi640
        i64.const 174
        i64.lt_u
        if (result f64) ;; label = @3
          global.get $g
          f64.reinterpret_i64
          throw $tag3
        else
          local.get $h
          f64.reinterpret_i64
        end
        i64.reinterpret_f64
        local.set $h
      end
    end
    local.get $h
    i64x2.splat
    i64x2.extract_lane 1
    i64.xor
    local.set $h
    local.get $h
  )
  (func (;1;) (type 8) (result i64)
    call $e0
  )
)

(assert_return (invoke "x") (i64.const 0))
