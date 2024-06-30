# The `control` Monitor

Wizard's built-in `control` monitor analyzes the dynamic control flow behavior of a program by instrumenting all loops and branches.
Its primary purpose is to be a more informative display of the bytecode, annotated with execution counts.
It is enabled with the `--monitors=control` flag.

## Annotated code display

```
% bin/wizeng --monitors=control test/monitors/loop_monitor0.wasm 
func #0:        x 1
 +1     | call[func=1]    
 +3     ╰>end                     x 1
func #1:        x 1
 +3     | i32.const[133]            
 +6     | local.set[0]              
 +8     | ╭ loop[]            <─╮         x 133
 +10    | | i32.const[3]        │   
 +12    | | local.set[1]        │   
 +14    | | ╭ loop[]          <───╮       x 399
 +16    | | | local.get[1]      │ │ 
 +18    | | | i32.const[1]      │ │ 
 +20    | | | i32.sub           │ │ 
 +21    | | | local.set[1]      │ │ 
 +23    | | | local.get[1]      │ │ 
 +25    | | | br_if[depth=0]  ────╯       x 266
        | | |                   │         x 133
 +27    | | ╰ end               │         x 133
 +28    | | local.get[0]        │   
 +30    | | i32.const[1]        │   
 +32    | | i32.sub             │   
 +33    | | local.set[0]        │   
 +35    | | local.get[0]        │   
 +37    | | br_if[depth=0]    ──╯         x 132
        | |                                 x 1
 +39    | ╰ end                             x 1
 +40    | i32.const[123]            
 +43    | local.set[0]              
 +45    | ╭ loop[]            <─╮         x 123
 +47    | | local.get[0]        │   
 +49    | | i32.const[1]        │   
 +51    | | i32.sub             │   
 +52    | | local.set[0]        │   
 +54    | | local.get[0]        │   
 +56    | | br_if[depth=0]    ──╯         x 122
        | |                                 x 1
 +58    | ╰ end                             x 1
 +59    ╰>end                               x 1
```

As we can see above, the default behavior is to instrument every loop and branch in the program and display a control flow graph annotated with execution counts.
Functions are annotated with their invocation count on the first line.
Similarly, `loop` and `end` bytecodes are annotated with their execution and branches have their *taken* count, with a fallthrough count, if applicable.
