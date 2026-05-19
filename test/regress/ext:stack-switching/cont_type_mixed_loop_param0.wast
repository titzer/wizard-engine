;; Loop carrying a (ref null $ct) param. Enter with null, on each iteration
;; produce a non-null cont. Tests SPC loop merge: param starts as null
;; (KIND_REF_U64 const) and becomes non-null (KIND_REF_U64 register).
(module
  (type $ft (func))
  (type $ct (cont $ft))

  (func $f) (elem declare func $f)

  (func (export "main") (result i32)
    (local $i i32)
    (ref.null $ct)                                  ;; initial loop param: null
    (loop $l (param (ref null $ct)) (result (ref null $ct))
      drop                                          ;; drop incoming
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (cont.new $ct (ref.func $f))                  ;; new non-null
      (br_if $l (i32.lt_s (local.get $i) (i32.const 2)))
    )
    ref.is_null
  )
)

(assert_return (invoke "main") (i32.const 0))
