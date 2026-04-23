;; 40 distinct fast functions: exercises the full fast-call table (slots FAST_CALL0..FAST_CALL39).
(module
  (func $f0 (export "fast:f0") (param i32) (result i32)
    local.get 0  i32.const 0  i32.add)
  (func $f1 (export "fast:f1") (param i32) (result i32)
    local.get 0  i32.const 1  i32.add)
  (func $f2 (export "fast:f2") (param i32) (result i32)
    local.get 0  i32.const 2  i32.add)
  (func $f3 (export "fast:f3") (param i32) (result i32)
    local.get 0  i32.const 3  i32.add)
  (func $f4 (export "fast:f4") (param i32) (result i32)
    local.get 0  i32.const 4  i32.add)
  (func $f5 (export "fast:f5") (param i32) (result i32)
    local.get 0  i32.const 5  i32.add)
  (func $f6 (export "fast:f6") (param i32) (result i32)
    local.get 0  i32.const 6  i32.add)
  (func $f7 (export "fast:f7") (param i32) (result i32)
    local.get 0  i32.const 7  i32.add)
  (func $f8 (export "fast:f8") (param i32) (result i32)
    local.get 0  i32.const 8  i32.add)
  (func $f9 (export "fast:f9") (param i32) (result i32)
    local.get 0  i32.const 9  i32.add)
  (func $f10 (export "fast:f10") (param i32) (result i32)
    local.get 0  i32.const 10  i32.add)
  (func $f11 (export "fast:f11") (param i32) (result i32)
    local.get 0  i32.const 11  i32.add)
  (func $f12 (export "fast:f12") (param i32) (result i32)
    local.get 0  i32.const 12  i32.add)
  (func $f13 (export "fast:f13") (param i32) (result i32)
    local.get 0  i32.const 13  i32.add)
  (func $f14 (export "fast:f14") (param i32) (result i32)
    local.get 0  i32.const 14  i32.add)
  (func $f15 (export "fast:f15") (param i32) (result i32)
    local.get 0  i32.const 15  i32.add)
  (func $f16 (export "fast:f16") (param i32) (result i32)
    local.get 0  i32.const 16  i32.add)
  (func $f17 (export "fast:f17") (param i32) (result i32)
    local.get 0  i32.const 17  i32.add)
  (func $f18 (export "fast:f18") (param i32) (result i32)
    local.get 0  i32.const 18  i32.add)
  (func $f19 (export "fast:f19") (param i32) (result i32)
    local.get 0  i32.const 19  i32.add)
  (func $f20 (export "fast:f20") (param i32) (result i32)
    local.get 0  i32.const 20  i32.add)
  (func $f21 (export "fast:f21") (param i32) (result i32)
    local.get 0  i32.const 21  i32.add)
  (func $f22 (export "fast:f22") (param i32) (result i32)
    local.get 0  i32.const 22  i32.add)
  (func $f23 (export "fast:f23") (param i32) (result i32)
    local.get 0  i32.const 23  i32.add)
  (func $f24 (export "fast:f24") (param i32) (result i32)
    local.get 0  i32.const 24  i32.add)
  (func $f25 (export "fast:f25") (param i32) (result i32)
    local.get 0  i32.const 25  i32.add)
  (func $f26 (export "fast:f26") (param i32) (result i32)
    local.get 0  i32.const 26  i32.add)
  (func $f27 (export "fast:f27") (param i32) (result i32)
    local.get 0  i32.const 27  i32.add)
  (func $f28 (export "fast:f28") (param i32) (result i32)
    local.get 0  i32.const 28  i32.add)
  (func $f29 (export "fast:f29") (param i32) (result i32)
    local.get 0  i32.const 29  i32.add)
  (func $f30 (export "fast:f30") (param i32) (result i32)
    local.get 0  i32.const 30  i32.add)
  (func $f31 (export "fast:f31") (param i32) (result i32)
    local.get 0  i32.const 31  i32.add)
  (func $f32 (export "fast:f32") (param i32) (result i32)
    local.get 0  i32.const 32  i32.add)
  (func $f33 (export "fast:f33") (param i32) (result i32)
    local.get 0  i32.const 33  i32.add)
  (func $f34 (export "fast:f34") (param i32) (result i32)
    local.get 0  i32.const 34  i32.add)
  (func $f35 (export "fast:f35") (param i32) (result i32)
    local.get 0  i32.const 35  i32.add)
  (func $f36 (export "fast:f36") (param i32) (result i32)
    local.get 0  i32.const 36  i32.add)
  (func $f37 (export "fast:f37") (param i32) (result i32)
    local.get 0  i32.const 37  i32.add)
  (func $f38 (export "fast:f38") (param i32) (result i32)
    local.get 0  i32.const 38  i32.add)
  (func $f39 (export "fast:f39") (param i32) (result i32)
    local.get 0  i32.const 39  i32.add)
  (func (export "main") (result i32)
    (local $acc i32)
    i32.const 0  call $f0  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f1  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f2  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f3  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f4  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f5  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f6  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f7  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f8  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f9  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f10  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f11  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f12  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f13  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f14  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f15  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f16  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f17  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f18  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f19  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f20  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f21  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f22  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f23  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f24  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f25  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f26  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f27  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f28  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f29  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f30  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f31  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f32  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f33  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f34  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f35  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f36  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f37  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f38  local.get $acc  i32.add  local.set $acc
    i32.const 0  call $f39  local.get $acc  i32.add  local.set $acc
    local.get $acc
    i32.const 780   ;; 0+1+2+...+39 = 780
    i32.ne)
)
