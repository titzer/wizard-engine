;; Fast handler calls an indirect function that does a lot:
;;   - calls two helper functions (fib-like recursion depth via iterative sum + product)
;;   - has its own locals, loop, and branch
;;
;; Func index layout:
;;   0 = $sum_to_n      : (i32) -> i32   sum 1..n
;;   1 = $product_to_n  : (i32) -> i32   product 1..n (n!)
;;   2 = $heavy         : (i32) -> i32   calls sum_to_n + product_to_n, loops, branches
;;   3 = fast:invoke    : (i32) -> i32   fast handler, calls table[0] = $heavy
;;   4 = $main          : () -> i32
;;
;; table[0] = $heavy
;;
;; $sum_to_n(n): returns 1+2+...+n  (loop with br_if)
;; $product_to_n(n): returns 1*2*...*n  (loop with br_if)
;;
;; $heavy(n):
;;   s = sum_to_n(n)           ;; e.g. n=4 -> 10
;;   p = product_to_n(n)       ;; e.g. n=4 -> 24
;;   acc = 0
;;   loop i from 1..n:         ;; accumulate s*i XOR p%i
;;     acc += (s * i) + (p / (i+1))
;;   return acc
;;
;; For n=4:
;;   s = 10, p = 24
;;   i=1: (10*1) + (24/2) = 10+12 = 22
;;   i=2: (10*2) + (24/3) = 20+8  = 28
;;   i=3: (10*3) + (24/4) = 30+6  = 36
;;   i=4: (10*4) + (24/5) = 40+4  = 44
;;   acc = 22+28+36+44 = 130
;;
;; fast:invoke(4) -> heavy(4) = 130
;; main: checks result == 130
(module
  (type $t_i_i (func (param i32) (result i32)))

  (func $sum_to_n (param $n i32) (result i32)
    (local $i i32) (local $acc i32)
    i32.const 1
    local.set $i
    block $exit
      loop $top
        local.get $i
        local.get $n
        i32.gt_s
        br_if $exit
        local.get $acc
        local.get $i
        i32.add
        local.set $acc
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $top
      end
    end
    local.get $acc)

  (func $product_to_n (param $n i32) (result i32)
    (local $i i32) (local $acc i32)
    i32.const 1
    local.set $i
    i32.const 1
    local.set $acc
    block $exit
      loop $top
        local.get $i
        local.get $n
        i32.gt_s
        br_if $exit
        local.get $acc
        local.get $i
        i32.mul
        local.set $acc
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $top
      end
    end
    local.get $acc)

  ;; heavy(n): s=sum_to_n(n), p=product_to_n(n), loop i=1..n accumulating (s*i)+(p/(i+1))
  (func $heavy (param $n i32) (result i32)
    (local $s i32) (local $p i32) (local $i i32) (local $acc i32)
    local.get $n
    call $sum_to_n
    local.set $s
    local.get $n
    call $product_to_n
    local.set $p
    i32.const 1
    local.set $i
    block $exit
      loop $top
        local.get $i
        local.get $n
        i32.gt_s
        br_if $exit
        ;; acc += (s * i) + (p / (i + 1))
        local.get $acc
        local.get $s
        local.get $i
        i32.mul
        local.get $p
        local.get $i
        i32.const 1
        i32.add
        i32.div_s
        i32.add
        i32.add
        local.set $acc
        local.get $i
        i32.const 1
        i32.add
        local.set $i
        br $top
      end
    end
    local.get $acc)

  ;; fast handler: calls table[0] (= $heavy) via call_indirect
  (func $invoke (export "fast:invoke") (param $n i32) (result i32)
    local.get $n
    i32.const 0
    call_indirect (type $t_i_i))

  (table (export "table") 1 funcref)
  (elem (i32.const 0) $heavy)

  (func (export "main") (result i32)
    i32.const 4
    call $invoke
    i32.const 130
    i32.ne)
)
