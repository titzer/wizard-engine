(module
  (memory 1 1)
  (data (i32.const 0) "abcdefghijklmnopqrstuvwxyz")

  (func (export "main")

    i32.const 0
    i64.const 31
    i64.atomic.rmw.xor offset=0 align=8
    drop

    i32.const 0
    i64.const 32
    i64.atomic.rmw.xor offset=0 align=8
    drop

    i32.const 0
    i64.const 33
    i64.atomic.rmw8.xor_u offset=0 align=1
    drop

    i32.const 0
    i64.const 34
    i64.atomic.rmw16.xor_u offset=0 align=2
    drop

    i32.const 0
    i64.const 35
    i64.atomic.rmw32.xor_u offset=0 align=4
    drop

    i32.const 0
    i32.const 36
    i32.atomic.rmw.xor offset=0 align=4
    drop

    i32.const 0
    i32.const 37
    i32.atomic.rmw.xor offset=0 align=4
    drop

    i32.const 0
    i32.const 38
    i32.atomic.rmw8.xor_u offset=0 align=1
    drop

    i32.const 0
    i32.const 39
    i32.atomic.rmw16.xor_u offset=0 align=2
    drop

    i32.const 0
    i32.const 310
    i32.atomic.rmw.add offset=0 align=4
    drop

    i32.const 0
    i32.const 311
    i32.atomic.rmw.add offset=0 align=4
    drop

    i32.const 0
    i32.const 312
    i32.atomic.rmw8.add_u offset=0 align=1
    drop

    i32.const 0
    i32.const 313
    i32.atomic.rmw16.add_u offset=0 align=2
    drop

    i32.const 0
    i64.const 314
    i64.atomic.rmw.add offset=0 align=8
    drop

    i32.const 0
    i64.const 315
    i64.atomic.rmw.add offset=0 align=8
    drop

    i32.const 0
    i64.const 316
    i64.atomic.rmw8.add_u offset=0 align=1
    drop

    i32.const 0
    i64.const 317
    i64.atomic.rmw16.add_u offset=0 align=2
    drop

    i32.const 0
    i64.const 318
    i64.atomic.rmw32.add_u offset=0 align=4
    drop

    i32.const 0
    i32.const 319
    i32.atomic.rmw.and offset=0 align=4
    drop

    i32.const 0
    i32.const 320
    i32.atomic.rmw.and offset=0 align=4
    drop

    i32.const 0
    i32.const 321
    i32.atomic.rmw8.and_u offset=0 align=1
    drop

    i32.const 0
    i32.const 322
    i32.atomic.rmw16.and_u offset=0 align=2
    drop

    i32.const 0
    i64.const 323
    i64.atomic.rmw.and offset=0 align=8
    drop
    
    i32.const 0
    i64.const 324
    i64.atomic.rmw.and offset=0 align=8
    drop

    i32.const 0
    i64.const 325
    i64.atomic.rmw8.and_u offset=0 align=1
    drop

    i32.const 0
    i64.const 326
    i64.atomic.rmw16.and_u offset=0 align=2
    drop

    i32.const 0
    i64.const 327
    i64.atomic.rmw32.and_u offset=0 align=4
    drop

    i32.const 0
    i32.const 5
    i32.const 328
    i32.atomic.rmw.cmpxchg offset=0 align=4
    drop

    i32.const 0
    i32.const 5
    i32.const 329
    i32.atomic.rmw.cmpxchg offset=0 align=4
    drop

    i32.const 0
    i32.const 5
    i32.const 330
    i32.atomic.rmw8.cmpxchg_u offset=0 align=1
    drop

    i32.const 0
    i32.const 5
    i32.const 331
    i32.atomic.rmw16.cmpxchg_u offset=0 align=2
    drop

    i32.const 0
    i64.const 5
    i64.const 332
    i64.atomic.rmw.cmpxchg offset=0 align=8
    drop

    i32.const 0
    i64.const 5
    i64.const 333
    i64.atomic.rmw.cmpxchg offset=0 align=8
    drop

    i32.const 0
    i64.const 5
    i64.const 334
    i64.atomic.rmw8.cmpxchg_u offset=0 align=1
    drop

    i32.const 0
    i64.const 5
    i64.const 335
    i64.atomic.rmw16.cmpxchg_u offset=0 align=2
    drop

    i32.const 0
    i64.const 5
    i64.const 336
    i64.atomic.rmw32.cmpxchg_u offset=0 align=4
    drop

    i32.const 0
    i32.atomic.load
    drop
    
    i32.const 0
    i32.atomic.load8_u
    drop

    i32.const 0 i32.atomic.load16_u
    drop

    i32.const 0
    i32.atomic.load offset=0
    drop

    i32.const 0
    i32.atomic.load8_u offset=0
    drop

    i32.const 0
    i32.atomic.load16_u offset=0
    drop

    i32.const 0
    i64.atomic.load
    drop
    
    i32.const 0
    i64.atomic.load8_u
    drop
    
    i32.const 0
    i64.atomic.load16_u
    drop
    
    i32.const 0
    i64.atomic.load32_u
    drop

    i32.const 0
    i64.atomic.load offset=0
    drop

    i32.const 0
    i64.atomic.load8_u offset=0
    drop

    i32.const 0
    i64.atomic.load16_u offset=0
    drop

    i32.const 0
    i64.atomic.load32_u offset=0
    drop

    i32.const 0
    i32.const 350
    i32.atomic.rmw.or offset=0 align=4
    drop

    i32.const 0
    i32.const 351
    i32.atomic.rmw.or offset=0 align=4
    drop

    i32.const 0
    i32.const 352
    i32.atomic.rmw8.or_u offset=0 align=1
    drop

    i32.const 0
    i32.const 353
    i32.atomic.rmw16.or_u offset=0 align=2
    drop

    i32.const 0
    i64.const 354
    i64.atomic.rmw.or offset=0 align=8
    drop

    i32.const 0
    i64.const 355
    i64.atomic.rmw.or offset=0 align=8
    drop

    i32.const 0
    i64.const 356
    i64.atomic.rmw8.or_u offset=0 align=1
    drop

    i32.const 0
    i64.const 357
    i64.atomic.rmw16.or_u offset=0 align=2
    drop

    i32.const 0
    i64.const 358
    i64.atomic.rmw32.or_u offset=0 align=4
    drop

    i32.const 0
    i32.const 110
    i32.atomic.store
    
    i32.const 0
    i32.const 111
    i32.atomic.store8
    
    i32.const 0
    i32.const 112
    i32.atomic.store16

    i32.const 0
    i32.const 113
    i32.atomic.store offset=0

    i32.const 0
    i32.const 114
    i32.atomic.store8 offset=0

    i32.const 0
    i32.const 115
    i32.atomic.store16 offset=0
 
    i32.const 0
    i64.const 116
    i64.atomic.store
    
    i32.const 0
    i64.const 117
    i64.atomic.store8
    
    i32.const 0
    i64.const 118
    i64.atomic.store16
    
    i32.const 0
    i64.const 119
    i64.atomic.store32

    i32.const 0
    i64.const 120
    i64.atomic.store offset=0

    i32.const 0
    i64.const 121
    i64.atomic.store8 offset=0

    i32.const 0
    i64.const 122
    i64.atomic.store16 offset=0

    i32.const 0
    i64.const 123
    i64.atomic.store32 offset=0

    i32.const 0
    i32.const 370
    i32.atomic.rmw.sub offset=0 align=4
    drop

    i32.const 0
    i32.const 371
    i32.atomic.rmw.sub offset=0 align=4
    drop

    i32.const 0
    i32.const 372
    i32.atomic.rmw8.sub_u offset=0 align=1
    drop

    i32.const 0
    i32.const 373
    i32.atomic.rmw16.sub_u offset=0 align=2
    drop

    i32.const 0
    i64.const 374
    i64.atomic.rmw.sub offset=0 align=8
    drop

    i32.const 0
    i64.const 375
    i64.atomic.rmw.sub offset=0 align=8
    drop

    i32.const 0
    i64.const 376
    i64.atomic.rmw8.sub_u offset=0 align=1
    drop

    i32.const 0
    i64.const 377
    i64.atomic.rmw16.sub_u offset=0 align=2
    drop

    i32.const 0
    i64.const 378
    i64.atomic.rmw32.sub_u offset=0 align=4
    drop

    i32.const 0
    i32.const 379
    i32.atomic.rmw.xchg offset=0 align=4
    drop
 
    i32.const 0
    i32.const 380
    i32.atomic.rmw.xchg offset=0 align=4
    drop

    i32.const 0
    i32.const 381
    i32.atomic.rmw8.xchg_u offset=0 align=1
    drop

    i32.const 0
    i32.const 382
    i32.atomic.rmw16.xchg_u offset=0 align=2
    drop

    i32.const 0
    i64.const 383
    i64.atomic.rmw.xchg offset=0 align=8
    drop

    i32.const 0
    i64.const 384
    i64.atomic.rmw.xchg offset=0 align=8
    drop

    i32.const 0
    i64.const 385
    i64.atomic.rmw8.xchg_u offset=0 align=1
    drop

    i32.const 0
    i64.const 386
    i64.atomic.rmw16.xchg_u offset=0 align=2
    drop

    i32.const 0
    i64.const 387
    i64.atomic.rmw32.xchg_u offset=0 align=4
    drop
  )
)
