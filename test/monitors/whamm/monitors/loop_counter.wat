(module
  (type (;0;) (func (param i32 i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32 i32) (result i32)))
  (type (;3;) (func (param i32) (result i32)))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32 i32 i32)))
  (type (;7;) (func (param i32 i32 i32 i32 i32) (result i32)))
  (type (;8;) (func (param i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;9;) (func (param i32 i32 i32 i32)))
  (type (;10;) (func (param i32 i32 i32 i32 i32 i32 i32) (result i32)))
  (type (;11;) (func (param i32 i32 i32 i32) (result i32)))
  (import "wizeng" "puts" (func (;0;) (type 0)))
  (import "wizeng" "puti" (func (;1;) (type 1)))
  (import "whamm:comodule" "read_function_name" (func (;2;) (type 2)))
  (func (;3;) (type 3) (param i32) (result i32)
    (local i32)
    i32.const 128
    i32.load
    i32.const 128
    i32.const 128
    i32.load
    local.get 0
    i32.add
    local.tee 1
    i32.const 132
    i32.load
    i32.gt_s
    if  ;; label = @1
      unreachable
    end
    local.get 1
    i32.store)
  (func (;4;) (type 1) (param i32)
    local.get 0
    local.get 0
    i32.load
    i32.const 1
    i32.add
    i32.store)
  (func (;5;) (type 4) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    i32.const 0
    i32.load offset=8
    i32.eqz
    if  ;; label = @1
      i32.const 120008
      call 3
      local.tee 7
      i32.const 17
      i32.store
      local.get 7
      i32.const 30000
      i32.store offset=4
      i32.const 0
      local.get 7
      i32.store offset=8
    else
      br 0 (;@1;)
    end
    i32.const 0
    i32.load offset=8
    local.tee 2
    i32.eqz
    if  ;; label = @1
      i32.const 0
      local.set 6
    else
      local.get 2
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      local.get 2
      i32.load offset=4
      local.set 6
      br 0 (;@1;)
    end
    local.get 6
    i32.const 0
    i32.load offset=12
    local.tee 4
    i32.lt_u
    if  ;; label = @1
      unreachable
    end
    local.get 6
    i32.const 3
    i32.lt_u
    if  ;; label = @1
      unreachable
    end
    local.get 6
    local.get 4
    i32.const 3
    i32.add
    i32.lt_u
    if  ;; label = @1
      unreachable
    end
    local.get 2
    i32.const 8
    local.get 4
    i32.const 4
    i32.mul
    local.tee 3
    i32.add
    local.tee 5
    i32.const 3
    i32.const 0
    i32.le_u
    if  ;; label = @1
      unreachable
    end
    i32.add
    local.get 0
    i32.store
    i32.const 3
    i32.const 1
    i32.le_u
    if  ;; label = @1
      unreachable
    end
    local.get 2
    local.get 5
    i32.add
    local.get 1
    i32.store offset=4
    i32.const 0
    local.get 4
    i32.const 3
    i32.add
    i32.store offset=12
    i32.const 3
    i32.const 2
    i32.le_u
    if  ;; label = @1
      unreachable
    end
    local.get 2
    i32.const 16
    local.get 3
    i32.add
    i32.add)
  (func (;6;) (type 5)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    i32.const 136
    call 3
    local.tee 9
    i32.const 5
    i32.store
    local.get 9
    i32.const 128
    i32.store offset=4
    i32.const -1
    local.set 4
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.const 0
      i32.load offset=12
      i32.lt_s
      if  ;; label = @2
        i32.const 0
        i32.load offset=8
        local.tee 1
        i32.eqz
        if  ;; label = @3
          i32.const 0
          local.set 10
        else
          local.get 1
          i32.eqz
          if  ;; label = @4
            unreachable
          end
          local.get 1
          i32.load offset=4
          local.set 10
          br 0 (;@3;)
        end
        local.get 10
        local.get 0
        i32.lt_u
        if  ;; label = @3
          unreachable
        end
        local.get 10
        i32.const 3
        i32.lt_u
        if  ;; label = @3
          unreachable
        end
        local.get 10
        local.get 0
        i32.const 3
        i32.add
        i32.lt_u
        if  ;; label = @3
          unreachable
        end
        local.get 1
        i32.const 8
        local.get 0
        i32.const 4
        i32.mul
        i32.add
        local.tee 2
        i32.const 3
        i32.const 0
        i32.le_u
        if  ;; label = @3
          unreachable
        end
        i32.add
        i32.load
        local.tee 5
        local.get 4
        i32.eq
        if  ;; label = @3
          local.get 4
          local.set 3
        else
          local.get 9
          i32.eqz
          if  ;; label = @4
            unreachable
          end
          i32.const 28
          local.get 9
          i32.const 8
          local.get 9
          i32.load offset=4
          i32.const 0
          local.get 5
          i32.le_s
          i32.eqz
          if  ;; label = @4
            unreachable
          end
          local.get 5
          call 10
          local.set 6
          i32.const 0
          i32.load offset=16
          local.set 7
          i32.const 0
          i32.const 0
          i32.load offset=20
          local.tee 8
          i32.const 0
          i32.load offset=24
          drop
          i32.lt_s
          if  ;; label = @4
            i32.const 60
            call 7
            local.get 6
            local.get 7
            local.get 8
            call 9
            i32.const 76
            call 7
          else
            i32.const 88
            call 7
            local.get 5
            call 1
            br 0 (;@4;)
          end
          i32.const 104
          call 7
          local.get 5
          local.set 3
          br 0 (;@3;)
        end
        i32.const 32
        call 7
        i32.const 3
        i32.const 1
        i32.le_u
        if  ;; label = @3
          unreachable
        end
        local.get 1
        local.get 2
        i32.add
        i32.load offset=4
        call 1
        i32.const 44
        call 7
        i32.const 3
        i32.const 2
        i32.le_u
        if  ;; label = @3
          unreachable
        end
        local.get 1
        local.get 2
        i32.add
        i32.load offset=8
        call 1
        call 8
        local.get 0
        i32.const 3
        i32.add
        local.set 0
        local.get 3
        local.set 4
        br 1 (;@1;)
      else
        return
      end
    end)
  (func (;7;) (type 1) (param i32)
    (local i32 i32)
    local.get 0
    i32.eqz
    if  ;; label = @1
      i32.const 0
      local.set 2
    else
      local.get 0
      i32.eqz
      if  ;; label = @2
        unreachable
      end
      local.get 0
      i32.load offset=4
      local.set 2
      br 0 (;@1;)
    end
    local.get 0
    i32.const 8
    i32.add
    local.get 0
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    local.get 0
    i32.load offset=4
    local.tee 1
    i32.le_s
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    local.get 1
    call 0
    return)
  (func (;8;) (type 5)
    i32.const 116
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=120
    i32.const 3
    i32.le_u
    if  ;; label = @1
      unreachable
    end
    i32.const 116
    i32.const 8
    i32.const 3
    i32.add
    i32.add
    i32.const 1
    call 0
    return)
  (func (;9;) (type 6) (param i32 i32 i32)
    local.get 0
    local.get 1
    i32.add
    i32.const 0
    local.get 2
    i32.le_s
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    local.get 2
    call 0
    return)
  (func (;10;) (type 7) (param i32 i32 i32 i32 i32) (result i32)
    (local i32 i32)
    i32.const 8
    i32.const 0
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    call 11
    i32.const 0
    i32.const 0
    i32.load offset=16
    i32.const 0
    i32.load offset=20
    local.set 6
    i32.const 0
    i32.load offset=24
    local.set 5
    i32.store offset=16
    i32.const 0
    local.get 6
    i32.store offset=20
    i32.const 0
    local.get 5
    i32.store offset=24)
  (func (;11;) (type 8) (param i32 i32 i32 i32 i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 1
    local.get 5
    local.get 2
    local.get 3
    i32.add
    i32.const 0
    local.get 4
    i32.le_s
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    local.get 4
    local.get 0
    call_indirect (type 11)
    local.tee 10
    local.get 4
    i32.const 0
    i32.lt_s
    local.set 12
    local.get 4
    i32.lt_u
    local.set 11
    local.get 12
    i32.eqz
    local.get 11
    i32.and
    if  ;; label = @1
      local.get 4
      i32.const 0
      i32.lt_u
      if  ;; label = @2
        unreachable
      end
      local.get 10
      i32.const 0
      i32.lt_u
      if  ;; label = @2
        unreachable
      end
      local.get 4
      local.get 10
      i32.lt_u
      if  ;; label = @2
        unreachable
      end
      local.get 3
      i32.const 0
      i32.add
      local.get 10
      i32.const 0
      i32.sub
      local.set 8
      local.set 9
      local.get 10
      local.set 7
      local.get 2
      local.set 6
    else
      local.get 10
      local.set 7
      local.get 4
      local.set 8
      local.get 3
      local.set 9
      local.get 2
      local.set 6
      br 0 (;@1;)
    end
    i32.const 0
    local.get 9
    i32.store offset=16
    i32.const 0
    local.get 8
    i32.store offset=20
    i32.const 0
    local.get 7
    i32.store offset=24
    local.get 6)
  (func (;12;) (type 0) (param i32 i32)
    local.get 1
    call 7)
  (func (;13;) (type 9) (param i32 i32 i32 i32)
    local.get 1
    local.get 2
    local.get 3
    call 9)
  (func (;14;) (type 1) (param i32)
    call 8)
  (func (;15;) (type 10) (param i32 i32 i32 i32 i32 i32 i32) (result i32)
    local.get 1
    local.get 2
    local.get 3
    local.get 4
    local.get 5
    local.get 6
    call 11)
  (func (;16;) (type 0) (param i32 i32)
    local.get 1
    call 1)
  (func (;17;) (type 6) (param i32 i32 i32)
    local.get 1
    local.get 2
    call 0)
  (func (;18;) (type 11) (param i32 i32 i32 i32) (result i32)
    local.get 1
    local.get 2
    local.get 3
    call 2)
  (table (;0;) 9 9 funcref)
  (memory (;0;) 5 5)
  (export "memory" (memory 0))
  (export "wasm:opcode:loop($alloc_loop(fid,pc))" (func 4))
  (export "$alloc_loop" (func 5))
  (export "wasm:exit" (func 6))
  (elem (;0;) (i32.const 1) func 12 13 14 15 16 17 10 18)
  (data (;0;) (i32.const 8) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\05\00\00\00\04\00\00\00   +\05\00\00\00\07\00\00\00 loop: \00\05\00\00\00\06\00\00\00func \22\00\00\05\00\00\00\01\00\00\00\22\00\00\00\05\00\00\00\06\00\00\00func #\00\00\05\00\00\00\02\00\00\00:\0a\00\00\05\00\00\00\04\00\00\00, \09\0a\88\00\00\00\88\00\04\00"))
