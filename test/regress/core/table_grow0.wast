(module $Tgt
  (table (export "table") 1 funcref) ;; initial size is 1
  (func (export "grow") (result i32) (table.grow (ref.null func) (i32.const 1)))
)
(register "grown-table" $Tgt)
(assert_return (invoke $Tgt "grow") (i32.const 1)) ;; now size is 2
(module $Tgit1
  ;; imported table limits should match, because external table size is 2 now
  (table (export "table") (import "grown-table" "table") 2 funcref)
  (func (export "grow") (result i32) (table.grow (ref.null func) (i32.const 1)))
)
(register "grown-imported-table" $Tgit1)
(assert_return (invoke $Tgit1 "grow") (i32.const 2)) ;; now size is 3
(module $Tgit2
  ;; imported table limits should match, because external table size is 3 now
  (import "grown-imported-table" "table" (table 3 funcref))
  (func (export "size") (result i32) (table.size))
)
(assert_return (invoke $Tgit2 "size") (i32.const 3))
