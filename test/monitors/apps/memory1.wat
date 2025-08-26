(module
  (memory 1)
  (data "\02\07\01\08")

  (func $main (export "main")
    (drop (memory.size))
    (drop (memory.grow (i32.const 1)))
    (memory.init 0 (i32.const 7) (i32.const 0) (i32.const 4))
    (memory.fill (i32.const 0xFF00) (i32.const 0x55) (i32.const 256))
    (memory.copy (i32.const 13) (i32.const 2) (i32.const 3))
  )
)
