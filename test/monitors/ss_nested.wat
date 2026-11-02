;; Six nested continuations, at depths 5 down to 0, each started by the level above it. The innermost one suspends
;; twice: on $near, which its parent handles, and on $far, which crosses every level to main.
;; Main also installs a clause for $never, a tag with a payload that is never suspended on.
;; Build with: wasm-as --all-features test/monitors/ss_nested.wat -o test/monitors/ss_nested.wasm
(module
  (type $fv (func))
  (type $cv (cont $fv))
  ;; a level that still needs its depth
  (type $fn (func (param i32)))
  (type $cn (cont $fn))

  (tag $near)
  (tag $far)
  (tag $never (param i32 i32))

  (global $near_count (mut i32) (i32.const 0))

  (func $nest (param $d i32) (local $k (ref null $cv))
    (if (i32.eqz (local.get $d))
      (then
        (suspend $near)
        (suspend $far)
        (return)
      )
    )
    (local.set $k
      (cont.bind $cn $cv (i32.sub (local.get $d) (i32.const 1)) (cont.new $cn (ref.func $nest))))
    (block $done
      (loop $l
        (block $h (result (ref null $cv))
          (resume $cv (on $near $h) (local.get $k))
          (br $done)
        )
        local.set $k
        (global.set $near_count (i32.add (global.get $near_count) (i32.const 1)))
        (br $l)
      )
    )
  )
  (elem declare func $nest)

  (func (export "main") (local $k (ref null $cv))
    (local.set $k (cont.bind $cn $cv (i32.const 5) (cont.new $cn (ref.func $nest))))
    (block $done
      (loop $l
        (block $hn (result i32 i32 (ref null $cv))
          (block $hf (result (ref null $cv))
            (resume $cv (on $far $hf) (on $never $hn) (local.get $k))
            (br $done)
          )
          (local.set $k)
          (br $l)
        )
        (drop) (drop) (drop)
        (br $done)
      )
    )
  )
)
