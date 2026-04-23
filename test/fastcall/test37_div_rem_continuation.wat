;; Fast handler uses div and rem (clobbers RAX/RDX), then continues with more work.
;; Tests that r_ip (RAX) and other clobbered registers are correctly handled
;; when arithmetic that clobbers the same hardware registers as interpreter ivars
;; is followed by further computation before the fast epilogue.
(module
  (func $normalize (export "fast:normalize") (param $x i32) (param $mod i32) (result i32)
    ;; compute (x / mod) + (x % mod)
    (local $q i32)
    (local $r i32)
    local.get $x
    local.get $mod
    i32.div_u
    local.set $q
    local.get $x
    local.get $mod
    i32.rem_u
    local.set $r
    local.get $q
    local.get $r
    i32.add)
  (func (export "main") (result i32)
    ;; normalize(17, 5) = 3 + 2 = 5
    i32.const 17
    i32.const 5
    call $normalize
    i32.const 5
    i32.ne)
)
