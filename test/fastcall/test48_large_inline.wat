;; Stress test: fast handler inlines a callee with a large body.
;; The inlined function uses many locals, multiple loops, and heavy arithmetic,
;; stressing slot allocation and register pressure inside the inlined context.
(module
  (func $heavy (param $n i32) (result i32)
    (local $a i32) (local $b i32) (local $c i32) (local $d i32)
    (local $e i32) (local $f i32) (local $g i32) (local $h i32)
    (local $i i32) (local $acc i32)
    ;; initialize locals from n
    local.get $n i32.const 1 i32.add local.set $a
    local.get $n i32.const 2 i32.add local.set $b
    local.get $n i32.const 3 i32.add local.set $c
    local.get $n i32.const 4 i32.add local.set $d
    local.get $a local.get $b i32.mul local.set $e
    local.get $c local.get $d i32.mul local.set $f
    local.get $e local.get $f i32.add local.set $g
    ;; loop 1: sum g down by subtracting i each iteration
    i32.const 0 local.set $i
    block $b1 loop $l1
      local.get $i i32.const 4 i32.ge_s br_if $b1
      local.get $acc local.get $g local.get $i i32.sub i32.add local.set $acc
      local.get $i i32.const 1 i32.add local.set $i
      br $l1
    end end
    ;; loop 2: accumulate h = a*i + b for i in 0..3
    i32.const 0 local.set $i
    i32.const 0 local.set $h
    block $b2 loop $l2
      local.get $i i32.const 4 i32.ge_s br_if $b2
      local.get $h local.get $a local.get $i i32.mul local.get $b i32.add i32.add local.set $h
      local.get $i i32.const 1 i32.add local.set $i
      br $l2
    end end
    local.get $acc local.get $h i32.add)
  (func $f (export "fast:f") (param i32) (result i32)
    local.get 0
    call $heavy)
  (func (export "main") (result i32)
    ;; heavy(2): a=3,b=4,c=5,d=6, e=12,f=30, g=42
    ;; loop1: acc += 42+41+40+39 = 162
    ;; loop2: h += (3*0+4)+(3*1+4)+(3*2+4)+(3*3+4) = 4+7+10+13 = 34
    ;; result: 162+34 = 196
    i32.const 2
    call $f
    i32.const 196
    i32.ne)
)
