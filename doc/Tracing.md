# Wizard Engine tracing options

The Wizard engine has a number of tracing options that emit diagnostic information when loading, validating, and executing Wasm programs.
This diagnostic information has a number of uses.
Rather than an afterthought, detailed and specific tracing information has been part of the design from the beginning.

Diagnostic tools are useful to different people for different reasons.

* For authors of new languages and tools generating Wasm, tracing the binary decoding and validation helps to accelerate development.
Production engines are often unhelpful, lacking enough detail about errors to figure out what's wrong.

* For those just looking to learn how Wasm works, the tracing options give insight into how an engine digest and runs a program.

* For those looking to understand or debug a running program, tracing options allow observing the program as it executes.

* For those developing in Wizard Engine, for example, building new runtime systems, working on new proposals, tracing options help debug the Wizard Engine itself.

## List of tracing options

 * `--trace-int` (abbreviated `-ti`): the interpreter prints every instruction as it is executed
 * `--trace-operands` (abbreviated `-to`): the interpreter prints operands to each instruction as it is executed
 * `--trace-binparse` (abbreviated `-tb`): the binary parser prints all sections and declarations as they are parsed
 * `--trace-validation` (abbreviated `-tv`): the code validator prints each instruction and the value stack during validation
 * `--trace-test` (abbreviated `-tt`): the unit-testing framework prints each test
 * `--trace-spectest` (abbreviated `-ts`): the testing framework that runs spec tests outputs each command as it is run
 * `--trace-memory` (abbreviated `-tm`): print memory acceses as they are executed
 * `--trace-compiler` (abbreviated `-tk`): trace compiler(s)
 * `--trace-stack` (abbreviated `-ts`): trace stack switching operations
 * `--trace-exception` (abbreviated `-tx`): trace exceptions
 * `--trace-calls=<pattern>`: print calls to any of the Wasm functions that match the given pattern(s)

Trace options dump their output to stdout.
Their abbreviated forms can be combined, so `-tiv` traces both the interpreter and the code validator.

# Tracing calls

There are three important kinds of call tracing that are useful in developing and using Wizard.

### Tracing Wizard

The first kind of call tracing traces *the Wizard Engine*'s implementation.
This is useful if you are debugging the engine itself.
To do this, you can run Wizard in the Virgil interpreter (i.e. not compiled to a binary) and pass the `-trace-calls=<pat>` option to the Virgil compiler.
You first must `make` one of the interpreter "binaries" in the `bin/` directory and then pass your pattern in the `V3C_OPTS` environment variable.

```
% make bin/unittest.v3i
% V3C_OPTS=-trace-calls=ErrorGen.U* bin/unittest.v3i
...
```

The pattern that is accepted by the `-trace-calls` option is a [glob](https://en.wikipedia.org/wiki/Glob_(programming)), i.e. it has the special `*` and `?` characters.
Using a pattern, you can narrow down the method(s) that you want the Virgil compiler to trace within the Wizard implementation.
You can pass more than one pattern, separating them by commas.

### Tracing Imports

The third kind of call tracing traces calls from *the Wasm program* to its imports.
Typically, imports come from the system, such as WASI, or another embedding.
Tracing them is similar to tracing system calls.
In order to trace all calls to an imported module, use `--trace-module`.

```
% bin/wizeng --expose-wizeng --trace-module=wizeng test/wizeng/hello.wasm
Hello Wizeng!
...
```

### Tracing Wasm calls

The third kind of call tracing traces *the Wasm program internal calls*.
To do this, the `wizeng` binary supports a similar option `--trace-calls=<pat>` that also accepts a glob.
The Wizard engine will use the names of functions in the Wasm binary from the names section.

```
% bin/wizeng --expose-wizeng --trace-calls=*.main test/wizeng/hello.wasm
<wasm func "main">()
Hello Wizeng!
...
```

### Tracing instructions

As seen in the options, Wizard has the ability to trace the interpreter's execution via the `--trace-int` or `-ti` option.
This is useful for example, in testing small programs, as it will print out every instruction executed.

```
% bin/wizeng -ti test/wizeng/brret0.wasm 
+1:   call[func=2]
  +1:   call[func=3]
    +1:   return
  +3:   call[func=3]
    +1:   return
  +5:   call[func=3]
    +1:   return
  +7:   call[func=4]
    +1:   br[depth=0]
    +3:   end
  +9:   call[func=4]
    +1:   br[depth=0]
    +3:   end
  +11:  call[func=4]
    +1:   br[depth=0]
    +3:   end
  +13:  call[func=5]
    +1:   end
  +15:  call[func=5]
    +1:   end
  +17:  call[func=5]
    +1:   end
  +19:  end
+3:   end
```

We can also see the individual operands to instructions by adding the `-tio` (i.e. trace operands) option.

```
% bin/wizeng -tio test/wizeng/add.wasm 
+1:   i32.const[1]            | |
+3:   i32.const[-1]           | | 1
+5:   i32.add                 | | 1 4294967295
+6:   end                     | | 0
```

## The `-fatal` option

When working on the Wizard Engine itself, often it is useful to get a stacktrace of where in Wizard's implementation an error (such as a failed unit test) occurs.
The `-fatal` option causes Wizard to intentionally exit with a stacktrace upon the first error.
