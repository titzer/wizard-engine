;; Struct fields have no visible byte order, so the runtime (used by the interpreters and constant
;; expressions) and inline SPC code must agree on it. Each kind of access (allocate, write, read) has
;; a "cold" copy that is called only once, and so stays in the interpreter, and a "hot" copy that is
;; called ~100 times, and so tiers up to SPC after a few calls. Hot code reads structs written by
;; cold code and constant expressions, and cold code reads structs written by hot code. Values have
;; distinct bytes, so any byte-order mismatch between tiers changes the value read.
;; Failures return (site << 4 | check), plus (iteration << 8) in the hot loop.
(module
  (type $s (struct (field (mut i8)) (field (mut i16)) (field (mut i32)) (field (mut i64))
                   (field (mut f32)) (field (mut f64)) (field (mut v128))))

  ;; Written by a constant expression with the values for iteration 0.
  (global $gk (ref $s) (struct.new $s
    (i32.const 0x84838281) (i32.const 0x84838281) (i32.const 0x84838281) (i64.const 0x84838281ded9d8db)
    (f32.const -0x1.070502p-118) (f64.const -0x1.38281ded9d8dbp-951)
    (v128.const i64x2 0x84838281ded9d8db 0x7b7c7d7e21262724)))
  (global $ga (mut (ref null $s)) (ref.null $s))	;; allocated by cold code
  (global $gw (mut (ref null $s)) (ref.null $s))	;; written by cold code
  (global $gb (mut (ref null $s)) (ref.null $s))	;; allocated by hot code
  (global $gh (mut (ref null $s)) (ref.null $s))	;; written by hot code
  (global $last (mut i32) (i32.const 0))		;; the last iteration of the hot loop

  ;; The 32-bit value for iteration {i}, with distinct bytes and the sign bit set in each byte.
  (func $x (param $i i32) (result i32)
    (i32.add (i32.mul (local.get $i) (i32.const 0x01010101)) (i32.const 0x84838281)))
  ;; The 64-bit value for {x}, with distinct halves.
  (func $y (param $x i32) (result i64)
    (i64.or (i64.shl (i64.extend_i32_u (local.get $x)) (i64.const 32))
            (i64.extend_i32_u (i32.xor (local.get $x) (i32.const 0x5a5a5a5a)))))
  ;; The 128-bit value for {y}, with distinct lanes.
  (func $v (param $y i64) (result v128)
    (i64x2.replace_lane 1 (i64x2.splat (local.get $y)) (i64.xor (local.get $y) (i64.const -1))))

  (func $new_cold (param $i i32) (result (ref $s))
    (local $x i32) (local $y i64)
    (local.set $x (call $x (local.get $i)))
    (local.set $y (call $y (local.get $x)))
    (struct.new $s (local.get $x) (local.get $x) (local.get $x) (local.get $y)
      (f32.reinterpret_i32 (local.get $x)) (f64.reinterpret_i64 (local.get $y)) (call $v (local.get $y))))
  (func $new_hot (param $i i32) (result (ref $s))
    (local $x i32) (local $y i64)
    (local.set $x (call $x (local.get $i)))
    (local.set $y (call $y (local.get $x)))
    (struct.new $s (local.get $x) (local.get $x) (local.get $x) (local.get $y)
      (f32.reinterpret_i32 (local.get $x)) (f64.reinterpret_i64 (local.get $y)) (call $v (local.get $y))))
  (func $write_cold (param $o (ref $s)) (param $i i32)
    (local $x i32) (local $y i64)
    (local.set $x (call $x (local.get $i)))
    (local.set $y (call $y (local.get $x)))
    (struct.set $s 0 (local.get $o) (local.get $x))
    (struct.set $s 1 (local.get $o) (local.get $x))
    (struct.set $s 2 (local.get $o) (local.get $x))
    (struct.set $s 3 (local.get $o) (local.get $y))
    (struct.set $s 4 (local.get $o) (f32.reinterpret_i32 (local.get $x)))
    (struct.set $s 5 (local.get $o) (f64.reinterpret_i64 (local.get $y)))
    (struct.set $s 6 (local.get $o) (call $v (local.get $y))))
  (func $write_hot (param $o (ref $s)) (param $i i32)
    (local $x i32) (local $y i64)
    (local.set $x (call $x (local.get $i)))
    (local.set $y (call $y (local.get $x)))
    (struct.set $s 0 (local.get $o) (local.get $x))
    (struct.set $s 1 (local.get $o) (local.get $x))
    (struct.set $s 2 (local.get $o) (local.get $x))
    (struct.set $s 3 (local.get $o) (local.get $y))
    (struct.set $s 4 (local.get $o) (f32.reinterpret_i32 (local.get $x)))
    (struct.set $s 5 (local.get $o) (f64.reinterpret_i64 (local.get $y)))
    (struct.set $s 6 (local.get $o) (call $v (local.get $y))))

  ;; {$check_cold} is called twice, so it reads in the interpreter; {$check_hot} is hot, so it reads in SPC code.
  (func $check_cold (param $o (ref $s)) (param $i i32) (result i32)
    (local $x i32) (local $y i64)
    (local.set $x (call $x (local.get $i)))
    (local.set $y (call $y (local.get $x)))
    (if (i32.ne (struct.get_u $s 0 (local.get $o)) (i32.and (local.get $x) (i32.const 0xff))) (then (return (i32.const 1))))
    (if (i32.ne (struct.get_s $s 0 (local.get $o)) (i32.extend8_s (local.get $x))) (then (return (i32.const 2))))
    (if (i32.ne (struct.get_u $s 1 (local.get $o)) (i32.and (local.get $x) (i32.const 0xffff))) (then (return (i32.const 3))))
    (if (i32.ne (struct.get_s $s 1 (local.get $o)) (i32.extend16_s (local.get $x))) (then (return (i32.const 4))))
    (if (i32.ne (struct.get $s 2 (local.get $o)) (local.get $x)) (then (return (i32.const 5))))
    (if (i64.ne (struct.get $s 3 (local.get $o)) (local.get $y)) (then (return (i32.const 6))))
    (if (i32.ne (i32.reinterpret_f32 (struct.get $s 4 (local.get $o))) (local.get $x)) (then (return (i32.const 7))))
    (if (i64.ne (i64.reinterpret_f64 (struct.get $s 5 (local.get $o))) (local.get $y)) (then (return (i32.const 8))))
    (if (i64.ne (i64x2.extract_lane 0 (struct.get $s 6 (local.get $o))) (local.get $y)) (then (return (i32.const 9))))
    (if (i64.ne (i64x2.extract_lane 1 (struct.get $s 6 (local.get $o))) (i64.xor (local.get $y) (i64.const -1))) (then (return (i32.const 10))))
    (if (i32.ne (i8x16.extract_lane_u 0 (struct.get $s 6 (local.get $o))) (i32.and (i32.xor (local.get $x) (i32.const 0x5a)) (i32.const 0xff))) (then (return (i32.const 11))))
    (i32.const 0))
  (func $check_hot (param $o (ref $s)) (param $i i32) (result i32)
    (local $x i32) (local $y i64)
    (local.set $x (call $x (local.get $i)))
    (local.set $y (call $y (local.get $x)))
    (if (i32.ne (struct.get_u $s 0 (local.get $o)) (i32.and (local.get $x) (i32.const 0xff))) (then (return (i32.const 1))))
    (if (i32.ne (struct.get_s $s 0 (local.get $o)) (i32.extend8_s (local.get $x))) (then (return (i32.const 2))))
    (if (i32.ne (struct.get_u $s 1 (local.get $o)) (i32.and (local.get $x) (i32.const 0xffff))) (then (return (i32.const 3))))
    (if (i32.ne (struct.get_s $s 1 (local.get $o)) (i32.extend16_s (local.get $x))) (then (return (i32.const 4))))
    (if (i32.ne (struct.get $s 2 (local.get $o)) (local.get $x)) (then (return (i32.const 5))))
    (if (i64.ne (struct.get $s 3 (local.get $o)) (local.get $y)) (then (return (i32.const 6))))
    (if (i32.ne (i32.reinterpret_f32 (struct.get $s 4 (local.get $o))) (local.get $x)) (then (return (i32.const 7))))
    (if (i64.ne (i64.reinterpret_f64 (struct.get $s 5 (local.get $o))) (local.get $y)) (then (return (i32.const 8))))
    (if (i64.ne (i64x2.extract_lane 0 (struct.get $s 6 (local.get $o))) (local.get $y)) (then (return (i32.const 9))))
    (if (i64.ne (i64x2.extract_lane 1 (struct.get $s 6 (local.get $o))) (i64.xor (local.get $y) (i64.const -1))) (then (return (i32.const 10))))
    (if (i32.ne (i8x16.extract_lane_u 0 (struct.get $s 6 (local.get $o))) (i32.and (i32.xor (local.get $x) (i32.const 0x5a)) (i32.const 0xff))) (then (return (i32.const 11))))
    (i32.const 0))

  ;; Called once, so that the allocation and writes are done in the interpreter.
  (func (export "setup")
    (global.set $ga (call $new_cold (i32.const 7)))
    (global.set $gw (struct.new_default $s))
    (call $write_cold (ref.as_non_null (global.get $gw)) (i32.const 9))
    (global.set $gh (struct.new_default $s)))

  ;; Runs {n} iterations of hot code, which reads the structs written by cold code and constant
  ;; expressions, and allocates and writes structs for {$check_cold} to read later.
  (func (export "hot") (param $n i32) (result i32)
    (local $i i32) (local $r i32)
    (loop $l
      (local.set $r (call $check_hot (global.get $gk) (i32.const 0)))
      (if (local.get $r) (then (return (i32.or (i32.shl (local.get $i) (i32.const 8)) (i32.or (i32.const 0x10) (local.get $r))))))
      (local.set $r (call $check_hot (ref.as_non_null (global.get $ga)) (i32.const 7)))
      (if (local.get $r) (then (return (i32.or (i32.shl (local.get $i) (i32.const 8)) (i32.or (i32.const 0x20) (local.get $r))))))
      (local.set $r (call $check_hot (ref.as_non_null (global.get $gw)) (i32.const 9)))
      (if (local.get $r) (then (return (i32.or (i32.shl (local.get $i) (i32.const 8)) (i32.or (i32.const 0x30) (local.get $r))))))
      (global.set $gb (call $new_hot (local.get $i)))
      (call $write_hot (ref.as_non_null (global.get $gh)) (local.get $i))
      (global.set $last (local.get $i))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n))))
    (i32.const 0))

  ;; Called once, so that the reads are done in the interpreter.
  (func (export "cold") (result i32)
    (local $r i32)
    (local.set $r (call $check_cold (ref.as_non_null (global.get $gb)) (global.get $last)))
    (if (local.get $r) (then (return (i32.or (i32.const 0x40) (local.get $r)))))
    (local.set $r (call $check_cold (ref.as_non_null (global.get $gh)) (global.get $last)))
    (if (local.get $r) (then (return (i32.or (i32.const 0x50) (local.get $r)))))
    (i32.const 0))
)

(invoke "setup")
(assert_return (invoke "hot" (i32.const 100)) (i32.const 0))
(assert_return (invoke "cold") (i32.const 0))
