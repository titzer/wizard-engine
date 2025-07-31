(module
  (type (;0;) (func (result i32)))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32) (result i32)))
  (type (;3;) (func))
  (type (;4;) (func (param i32 i32) (result i32)))
  (type (;5;) (func (param i32 i32)))
  (table (;0;) 8 8 funcref)
  (memory (;0;) 3 3)
  (export "main" (func 0))
  (export "memory" (memory 0))
  (elem (;0;) (i32.const 1) func 8 9 10 11 12 13 14)
  (func (;0;) (type 0) (result i32)
    i32.const 0
    i32.load offset=65544
    call 1
    i32.const 0
  )
  (func (;1;) (type 1) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    local.get 0
    i32.eqz
    if ;; label = @1
      unreachable
    end
    local.get 0
    i32.load offset=4
    local.set 7
    i32.const 0
    local.set 2
    loop ;; label = @1
      local.get 2
      local.get 7
      i32.lt_s
      if ;; label = @2
        block ;; label = @3
          block ;; label = @4
            block ;; label = @5
              block ;; label = @6
                block ;; label = @7
                  block ;; label = @8
                    block ;; label = @9
                      block ;; label = @10
                        block ;; label = @11
                          block ;; label = @12
                            block ;; label = @13
                              block ;; label = @14
                                block ;; label = @15
                                  block ;; label = @16
                                    block ;; label = @17
                                      block ;; label = @18
                                        block ;; label = @19
                                          block ;; label = @20
                                            local.get 0
                                            i32.eqz
                                            if ;; label = @21
                                              unreachable
                                            end
                                            local.get 0
                                            i32.load offset=4
                                            local.get 2
                                            i32.le_u
                                            if ;; label = @21
                                              unreachable
                                            end
                                            local.get 0
                                            local.get 2
                                            i32.const 8
                                            i32.add
                                            i32.add
                                            i32.load8_u
                                            br_table 0 (;@20;) 1 (;@19;) 2 (;@18;) 3 (;@17;) 4 (;@16;) 5 (;@15;) 6 (;@14;) 7 (;@13;) 8 (;@12;) 9 (;@11;) 17 (;@3;) 16 (;@4;) 15 (;@5;) 10 (;@10;) 11 (;@9;) 14 (;@6;) 12 (;@8;)
                                          end
                                          local.get 2
                                          i32.const 1
                                          i32.add
                                          local.set 1
                                          br 12 (;@7;)
                                        end
                                        local.get 2
                                        i32.const 1
                                        i32.add
                                        local.set 1
                                        br 11 (;@7;)
                                      end
                                      local.get 2
                                      i32.const 1
                                      i32.add
                                      local.set 1
                                      br 10 (;@7;)
                                    end
                                    local.get 2
                                    i32.const 1
                                    i32.add
                                    local.set 1
                                    br 9 (;@7;)
                                  end
                                  local.get 2
                                  i32.const 1
                                  i32.add
                                  local.set 1
                                  br 8 (;@7;)
                                end
                                local.get 2
                                i32.const 1
                                i32.add
                                local.set 1
                                br 7 (;@7;)
                              end
                              local.get 2
                              i32.const 1
                              i32.add
                              local.set 1
                              br 6 (;@7;)
                            end
                            i32.const 65536
                            local.get 0
                            local.get 2
                            i32.const 1
                            i32.add
                            local.tee 6
                            local.get 0
                            i32.load offset=4
                            local.get 6
                            i32.le_u
                            if ;; label = @13
                              unreachable
                            end
                            i32.const 8
                            i32.add
                            i32.add
                            i32.load8_u
                            local.tee 5
                            i32.const 0
                            i32.load offset=65540
                            local.get 5
                            i32.le_u
                            if ;; label = @13
                              unreachable
                            end
                            i32.const 4
                            i32.mul
                            i32.const 8
                            i32.add
                            i32.add
                            i32.load
                            call 1
                            local.get 2
                            i32.const 2
                            i32.add
                            local.set 1
                            br 5 (;@7;)
                          end
                          local.get 2
                          call 2
                          drop
                          local.get 2
                          i32.const 1
                          i32.add
                          local.set 1
                          br 4 (;@7;)
                        end
                        local.get 2
                        call 3
                        drop
                        local.get 2
                        i32.const 1
                        i32.add
                        local.set 1
                        br 3 (;@7;)
                      end
                      local.get 2
                      local.get 0
                      local.get 2
                      i32.const 1
                      i32.add
                      local.tee 4
                      local.get 0
                      i32.load offset=4
                      local.get 4
                      i32.le_u
                      if ;; label = @10
                        unreachable
                      end
                      i32.const 8
                      i32.add
                      i32.add
                      i32.load8_u
                      i32.add
                      local.set 1
                      br 2 (;@7;)
                    end
                    local.get 2
                    local.get 0
                    local.get 2
                    i32.const 1
                    i32.add
                    local.tee 3
                    local.get 0
                    i32.load offset=4
                    local.get 3
                    i32.le_u
                    if ;; label = @9
                      unreachable
                    end
                    i32.const 8
                    i32.add
                    i32.add
                    i32.load8_u
                    i32.sub
                    local.set 1
                    br 1 (;@7;)
                  end
                  local.get 2
                  local.set 1
                  br 0 (;@7;)
                end
                local.get 1
                local.set 2
                br 5 (;@1;)
              end
              return
            end
            unreachable
          end
          unreachable
        end
        unreachable
      else
        return
      end
    end
  )
  (func (;2;) (type 2) (param i32) (result i32)
    (local i32)
    local.get 0
    i32.const 30955
    i32.lt_s
    if ;; label = @1
      local.get 0
      i32.const 123
      i32.add
      local.set 1
    else
      local.get 0
      local.set 1
      br 0 (;@1;)
    end
    local.get 1
  )
  (func (;3;) (type 2) (param i32) (result i32)
    call 4
  )
  (func (;4;) (type 0) (result i32)
    call 5
    drop
    call 6
    i32.const 123
  )
  (func (;5;) (type 0) (result i32)
    i32.const 123
  )
  (func (;6;) (type 3)
    call 7
    drop
    return
  )
  (func (;7;) (type 0) (result i32)
    i32.const 6
  )
  (func (;8;) (type 4) (param i32 i32) (result i32)
    local.get 1
    call 2
  )
  (func (;9;) (type 4) (param i32 i32) (result i32)
    local.get 1
    call 3
  )
  (func (;10;) (type 2) (param i32) (result i32)
    call 4
  )
  (func (;11;) (type 2) (param i32) (result i32)
    call 5
  )
  (func (;12;) (type 1) (param i32)
    call 6
  )
  (func (;13;) (type 2) (param i32) (result i32)
    call 7
  )
  (func (;14;) (type 5) (param i32 i32)
    local.get 1
    call 1
  )
  (data (;0;) (i32.const 65536) "\13\00\00\00\04\00\00\00\18\00\01\000\00\01\00@\00\01\00X\00\01\00\05\00\00\00\0e\00\00\00\04\02\03\0d\03\0f\07\02\01\02\07\03\03\0f\00\00\05\00\00\00\06\00\00\00\01\02\03\04\05\06\00\00\05\00\00\00\0e\00\00\00\01\01\02\03\0d\04\00\01\02\03\08\07\01\0f\00\00\05\00\00\00\06\00\00\00\0d\03\0f\09\0e\02\00\00")
)
