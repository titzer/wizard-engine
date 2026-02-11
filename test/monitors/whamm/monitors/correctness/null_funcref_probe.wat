;; Tests that insert_new_probe rejects null funcref with error code -6.
(module
  (import "whamm:dyninstr" "insert_new_probe"
    (func $insert_new_probe (param i32 i32 funcref) (result i32)))
  (import "wizeng" "puti" (func $puti (param i32)))
  (import "wizeng" "puts" (func $puts (param i32 i32)))

  (export "wasm:func:entry(fid,pc)" (func $probe))
  (export "" (memory $mem))

  (memory $mem 1)
  (data (i32.const 0x00) "\n")

  (global $done (mut i32) (i32.const 0))

  (func $probe (param $fid i32) (param $pc i32)
    ;; Only run once
    (if (global.get $done) (then (return)))
    (global.set $done (i32.const 1))
    ;; insert_new_probe with null funcref should return -6
    (call $puti
      (call $insert_new_probe
        (local.get $fid)
        (local.get $pc)
        (ref.null func)
      )
    )
    (call $puts (i32.const 0x00) (i32.const 1))
  )
)
