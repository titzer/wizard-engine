;; Struct layout: allocate many structs in a loop, link them, and traverse the list.
(module
  (type $node (struct (field $val (mut i32)) (field $next (mut (ref null $node))) (field $tag (mut i8)) (field $big (mut i64))))

  (func (export "build_and_sum") (param $n i32) (result i32)
    (local $i i32)
    (local $head (ref null $node))
    (local $sum i32)
    (loop $l
      (local.set $head (struct.new $node (local.get $i) (local.get $head) (i32.const 0x5a) (i64.extend_i32_u (local.get $i))))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br_if $l (i32.lt_u (local.get $i) (local.get $n))))
    (block $done
      (loop $w
        (br_if $done (ref.is_null (local.get $head)))
        (if (i32.ne (struct.get_u $node $tag (local.get $head)) (i32.const 0x5a)) (then (return (i32.const -1))))
        (if (i64.ne (struct.get $node $big (local.get $head)) (i64.extend_i32_u (struct.get $node $val (local.get $head))))
          (then (return (i32.const -2))))
        (local.set $sum (i32.add (local.get $sum) (struct.get $node $val (local.get $head))))
        (local.set $head (struct.get $node $next (local.get $head)))
        (br $w)))
    (local.get $sum))
)

(assert_return (invoke "build_and_sum" (i32.const 1)) (i32.const 0))
(assert_return (invoke "build_and_sum" (i32.const 10)) (i32.const 45))
(assert_return (invoke "build_and_sum" (i32.const 1000)) (i32.const 499500))
(assert_return (invoke "build_and_sum" (i32.const 5000)) (i32.const 12497500))
