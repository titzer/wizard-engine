;; Stack-switching opcodes aren't accepted by `wat2wasm`; rebuild with the stack-switching spec interpreter:
;;
;; stack-switching/interpreter/wasm test/monitors/stackdepth.wat -o test/monitors/stackdepth.wasm
(module
  (type $f (func))
  (type $c (cont $f))
  (tag $yield)

  ;; Suspends at depth 1 within its continuation stack segment.
  (func $shallow
    (suspend $yield)
  )

  ;; Suspends at depth 3 within its continuation stack segment.
  (func $deep
    (call $level1)
  )
  (func $level1
    (call $level2)
  )
  (func $level2
    (suspend $yield)
  )

  (elem declare func $shallow $deep)

  (func (export "main") (result i32)
    (block (result (ref null $c))
      (resume $c (on $yield 0) (cont.new $c (ref.func $shallow)))
      (ref.null $c)
    )
    (drop)

    (block (result (ref null $c))
      (resume $c (on $yield 0) (cont.new $c (ref.func $deep)))
      (ref.null $c)
    )
    (drop)

    (block (result (ref null $c))
      (resume $c (on $yield 0) (cont.new $c (ref.func $deep)))
      (ref.null $c)
    )
    (drop)

    (i32.const 0)
  )
)
