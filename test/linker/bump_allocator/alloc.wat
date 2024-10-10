(module
  ;; Declare memory, start with 1 page (64KiB)
  (memory (export "memory") 1)

  ;; Global bump pointer, starts at offset 4, mutable
  (global $bump_pointer (mut i32) (i32.const 4))

  ;; Function to allocate memory
  (func $allocate (param $size i32) (result i32)
    (local $current_pointer i32)
    (local $new_pointer i32)
    (local $needed_pages i32)
    (local $zero_counter i32)

    ;; Get the current value of the bump pointer
    (local.set $current_pointer (global.get $bump_pointer))

    ;; if size is zero, we give free four bytes to it
    (if (i32.eq (local.get $size) (i32.const 0))
      (then
        (local.set $size (i32.const 4))
      )
    )

    ;; Calculate the new bump pointer position (current + size)
    (local.set $new_pointer 
      (i32.add
        (local.get $current_pointer)
        (local.get $size)
      )
    )

    ;; Check if the new pointer exceeds the current memory size (in bytes)
    ;; Memory size is in pages, need to convert it to bytes by multiplying with 65536 (64KiB/page)
    (if (i32.gt_u (local.get $new_pointer) (i32.mul (memory.size) (i32.const 65536)))
      (then
        ;; Calculate the number of pages needed
        ;; First, find the total bytes needed beyond the current memory size
        (local.set $needed_pages 
          (i32.div_u 
            (i32.sub
              (local.get $new_pointer)
              (i32.mul (memory.size) (i32.const 65536))
            )
            (i32.const 65536)
          )
        )
        ;; Add one more page if there's a remainder
        (if (i32.rem_u (i32.sub (local.get $new_pointer) (i32.mul (memory.size) (i32.const 65536))) (i32.const 65536))
          (then
            (local.set $needed_pages (i32.add (local.get $needed_pages) (i32.const 1)))
          )
        )
        ;; Attempt to grow memory by the calculated number of pages
        (drop (memory.grow (local.get $needed_pages)))
      )
    )

    ;; Set the new bump pointer
    (global.set $bump_pointer (local.get $new_pointer))

    ;; Return the old bump pointer value, which is the start of the allocated block
    (local.get $current_pointer)
  )

  ;; Export the allocator and initializer functions
  (export "allocate" (func $allocate))
)