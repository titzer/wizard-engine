;; Block with a (ref null $ct) result, joined from two predecessors via br_if.
;; Tests SPC merge for a control-flow target.
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "main") (param $cond i32) (result i32)
    (ref.is_null
      (block $b (result (ref null $ct))
        (cont.new $ct (ref.func $f))      ;; non-null on stack
        (br_if $b (local.get $cond))       ;; if cond, exit with non-null
        drop
        (ref.null $ct)                     ;; otherwise fall through with null
      ))
  )
)

(assert_return (invoke "main" (i32.const 1)) (i32.const 0))
(assert_return (invoke "main" (i32.const 0)) (i32.const 1))
