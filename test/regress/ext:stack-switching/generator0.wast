;; Generator example from the stack-switching paper (Figure 2): $gen yields 10..1, $sum totals them.
(module
;; Example sum function repeatedly calls generator.
(func $sum (export "sum") (result i32)
  (local $k (ref null $ct)) (local $acc i32)
  (local.set $k (cont.new $ct (ref.func $gen)))
  (loop $next
    (block $on_yield (result i32 (ref $ct))
      (resume $ct (on $yield $on_yield)
        (local.get $k))
      (local.set $k (ref.null $ct))
      (return (local.get $acc)))
    (local.set $k)               ;; continuation
    (local.set $acc              ;; yielded value
      (i32.add (local.get $acc)))
    (br $next))
  (unreachable))
;; Example type and tag declarations
(type $ft (func))
(type $ct (cont $ft))
(tag $yield (param i32))
(elem declare func $gen)

;; Example generator function yields 10..1
(func $gen (type $ft)
  (local $i i32)
  (local.set $i (i32.const 10))
  (loop $l
    (suspend $yield (local.get $i))
    (local.set $i (i32.sub (local.get $i)
                           (i32.const 1)))
    (br_if $l (local.get $i))))
)
(assert_return (invoke "sum") (i32.const 55))
