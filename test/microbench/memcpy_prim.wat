;; INNER_CALIBRATION = 92
(module
  (type (;0;) (func))
  (type (;1;) (func (param i32)))
  (type (;2;) (func (param i32 i32)))
  (func $memcpy_prim.main (type 0)
    (local i32)
    i32.const 0
    local.set 0
    loop  ;; label = @1
      local.get 0
      i32.const 100 (;$INNER_ITERATIONS;)
      i32.lt_s
      if  ;; label = @2
        i32.const 1
        call $memcpy_prim.memcpy<byte>
        i32.const 2
        call $memcpy_prim.memcpy<short>
        i32.const 4
        call $memcpy_prim.memcpy<int>
        i32.const 8
        call $memcpy_prim.memcpy<long>
        i32.const 4
        call $memcpy_prim.memcpy<float>
        i32.const 8
        call $memcpy_prim.memcpy<double>
        local.get 0
        i32.const 1
        i32.add
        local.set 0
        br 1 (;@1;)
      else
        return
      end
    end)
  (func $memcpy_prim.memcpy<byte> (type 1) (param i32)
    (local i32 i32 i32)
    i32.const 8
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=12
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=276
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 16
    i32.const 0
    i32.load offset=276
    i32.add
    local.set 3
    i32.const 280
    local.set 1
    i32.const 16
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_u
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.load8_u
        i32.store8
        local.get 2
        local.get 0
        i32.add
        local.get 1
        local.get 0
        i32.add
        local.set 1
        local.set 2
        br 1 (;@1;)
      else
        return
      end
    end)
  (func $memcpy_prim.memcpy<short> (type 1) (param i32)
    (local i32 i32 i32)
    i32.const 8
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=12
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=276
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 16
    i32.const 0
    i32.load offset=276
    i32.add
    local.set 3
    i32.const 280
    local.set 1
    i32.const 16
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_u
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.load16_s
        i32.store16
        local.get 2
        local.get 0
        i32.add
        local.get 1
        local.get 0
        i32.add
        local.set 1
        local.set 2
        br 1 (;@1;)
      else
        return
      end
    end)
  (func $memcpy_prim.memcpy<int> (type 1) (param i32)
    (local i32 i32 i32)
    i32.const 8
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=12
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=276
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 16
    i32.const 0
    i32.load offset=276
    i32.add
    local.set 3
    i32.const 280
    local.set 1
    i32.const 16
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_u
      if  ;; label = @2
        local.get 1
        local.get 2
        i32.load
        i32.store
        local.get 2
        local.get 0
        i32.add
        local.get 1
        local.get 0
        i32.add
        local.set 1
        local.set 2
        br 1 (;@1;)
      else
        return
      end
    end)
  (func $memcpy_prim.memcpy<long> (type 1) (param i32)
    (local i32 i32 i32)
    i32.const 8
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=12
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=276
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 16
    i32.const 0
    i32.load offset=276
    i32.add
    local.set 3
    i32.const 280
    local.set 1
    i32.const 16
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_u
      if  ;; label = @2
        local.get 1
        local.get 2
        i64.load
        i64.store
        local.get 2
        local.get 0
        i32.add
        local.get 1
        local.get 0
        i32.add
        local.set 1
        local.set 2
        br 1 (;@1;)
      else
        return
      end
    end)
  (func $memcpy_prim.memcpy<float> (type 1) (param i32)
    (local i32 i32 i32)
    i32.const 8
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=12
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=276
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 16
    i32.const 0
    i32.load offset=276
    i32.add
    local.set 3
    i32.const 280
    local.set 1
    i32.const 16
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_u
      if  ;; label = @2
        local.get 1
        local.get 2
        f32.load
        f32.store
        local.get 2
        local.get 0
        i32.add
        local.get 1
        local.get 0
        i32.add
        local.set 1
        local.set 2
        br 1 (;@1;)
      else
        return
      end
    end)
  (func $memcpy_prim.memcpy<double> (type 1) (param i32)
    (local i32 i32 i32)
    i32.const 8
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=12
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 0
    i32.load offset=276
    drop
    i32.const 272
    i32.eqz
    if  ;; label = @1
      unreachable
    end
    i32.const 16
    i32.const 0
    i32.load offset=276
    i32.add
    local.set 3
    i32.const 280
    local.set 1
    i32.const 16
    local.set 2
    loop  ;; label = @1
      local.get 2
      local.get 3
      i32.lt_u
      if  ;; label = @2
        local.get 1
        local.get 2
        f64.load
        f64.store
        local.get 2
        local.get 0
        i32.add
        local.get 1
        local.get 0
        i32.add
        local.set 1
        local.set 2
        br 1 (;@1;)
      else
        return
      end
    end)
  (func (;7;) (type 2) (param i32 i32)
    local.get 1
    call $memcpy_prim.memcpy<float>)
  (func (;8;) (type 2) (param i32 i32)
    local.get 1
    call $memcpy_prim.memcpy<long>)
  (func (;9;) (type 2) (param i32 i32)
    local.get 1
    call $memcpy_prim.memcpy<int>)
  (func (;10;) (type 2) (param i32 i32)
    local.get 1
    call $memcpy_prim.memcpy<short>)
  (func (;11;) (type 2) (param i32 i32)
    local.get 1
    call $memcpy_prim.memcpy<byte>)
  (func (;12;) (type 2) (param i32 i32)
    local.get 1
    call $memcpy_prim.memcpy<double>)
  (table (;0;) 7 7 funcref)
  (memory (;0;) 1 1)
  (export "main" (func $memcpy_prim.main))
  (export "memory" (memory 0))
  (elem (;0;) (i32.const 1) func 7 8 9 10 11 12)
  (data (;0;) (i32.const 8) "\05\00\00\00\00\01\00\00\b51}Y\85\c1\cdiUQ\1dy%\e1m\89\f5q\bd\99\c5\01\0d\a9\95\91]\b9e!\ad\c95\b1\fd\d9\05AM\e9\d5\d1\9d\f9\a5a\ed\09u\f1=\19E\81\8d)\15\11\dd9\e5\a1-I\b51}Y\85\c1\cdiUQ\1dy%\e1m\89\f5q\bd\99\c5\01\0d\a9\95\91]\b9e!\ad\c95\b1\fd\d9\05AM\e9\d5\d1\9d\f9\a5a\ed\09u\f1=\19E\81\8d)\15\11\dd9\e5\a1-I\b51}Y\85\c1\cdiUQ\1dy%\e1m\89\f5q\bd\99\c5\01\0d\a9\95\91]\b9e!\ad\c95\b1\fd\d9\05AM\e9\d5\d1\9d\f9\a5a\ed\09u\f1=\19E\81\8d)\15\11\dd9\e5\a1-I\b51}Y\85\c1\cdiUQ\1dy%\e1m\89\f5q\bd\99\c5\01\0d\a9\95\91]\b9e!\ad\c95\b1\fd\d9\05AM\e9\d5\d1\9d\f9\a5a\ed\09u\f1=\19E\81\8d)\15\11\dd9\e5\a1-I\05\00\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
