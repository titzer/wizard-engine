;; TODO: this really belongs to exception handling, but is the union of recursion groups and EH
(module
  (rec
    (type $t1 (func))
    (type $t2 (func))
  )
  (tag (export "tag") (type $t1))
)

(register "M")

(assert_unlinkable
  (module
    (rec
      (type $t1 (func))
      (type $t2 (func))
    )
    (tag (import "M" "tag") (type $t2))
  )
  "incompatible import"
)
