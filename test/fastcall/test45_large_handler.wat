;; Stress test: fast handler with a large body.
;; Many locals, deep arithmetic, multiple control flow paths, and a loop.
;; Exercises register allocation and spilling within the fast-compiled function.
(module
  (func $compute (export "fast:compute") (param $a i32) (param $b i32) (param $c i32) (result i32)
    (local $t0 i32) (local $t1 i32) (local $t2 i32) (local $t3 i32)
    (local $t4 i32) (local $t5 i32) (local $t6 i32) (local $t7 i32)
    (local $acc i32) (local $i i32)
    ;; t0 = a*a, t1 = b*b, t2 = c*c
    local.get $a local.get $a i32.mul local.set $t0
    local.get $b local.get $b i32.mul local.set $t1
    local.get $c local.get $c i32.mul local.set $t2
    ;; t3 = a*b, t4 = b*c, t5 = a*c
    local.get $a local.get $b i32.mul local.set $t3
    local.get $b local.get $c i32.mul local.set $t4
    local.get $a local.get $c i32.mul local.set $t5
    ;; t6 = t0+t1+t2, t7 = t3+t4+t5
    local.get $t0 local.get $t1 i32.add local.get $t2 i32.add local.set $t6
    local.get $t3 local.get $t4 i32.add local.get $t5 i32.add local.set $t7
    ;; loop: acc += t6 - t7*i for i in 0..4
    i32.const 0 local.set $i
    block $break
      loop $cont
        local.get $i i32.const 4 i32.ge_s br_if $break
        local.get $acc
        local.get $t6
        local.get $t7 local.get $i i32.mul
        i32.sub
        i32.add
        local.set $acc
        local.get $i i32.const 1 i32.add local.set $i
        br $cont
      end
    end
    ;; mix in an if/else
    local.get $acc
    i32.const 0
    i32.lt_s
    if
      i32.const 0 local.set $acc
    end
    ;; final: acc + t6 + t7
    local.get $acc local.get $t6 i32.add local.get $t7 i32.add)
  (func (export "main") (result i32)
    ;; compute(3, 4, 5):
    ;;   t0=9, t1=16, t2=25, t3=12, t4=20, t5=15
    ;;   t6=50, t7=47
    ;;   loop i=0: acc += 50-0=50  => acc=50
    ;;   loop i=1: acc += 50-47=3  => acc=53
    ;;   loop i=2: acc += 50-94=-44 => acc=9
    ;;   loop i=3: acc += 50-141=-91 => acc=-82 => clamped to 0
    ;;   final: 0 + 50 + 47 = 97
    i32.const 3 i32.const 4 i32.const 5
    call $compute
    i32.const 97
    i32.ne)
)
