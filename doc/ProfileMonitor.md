# The `profile` Monitor

Wizard's built-in `profile` monitor analyzes time spent executing Wasm functions and displays an annotated calling context tree summary.
It is enabled with the `--monitors=profile` flag and supports a couple of suboptions for customization.

## Basic usage

```
% bin/wizeng --monitors=profile test/wizeng/calls1.wasm 
  *                                          nested        self    self %     count
  func "main"                             0.000876s   0.000707s   80.707%         1
    func "bar"                            0.000120s   0.000098s   11.187%        30
      func "baz"                          0.000022s   0.000022s    2.511%        30
    func "foo"                            0.000045s   0.000045s    5.136%        60
    func "baz"                            0.000004s   0.000004s    0.456%        10
```

The basic usage displays the result of profiling every enter and exit to every function, summarized by time spent in "self" (i.e. executing code in the function) and "nested" (i.e. time spent in nested functions).
It additionally displays the number of invocations of that function *at that point in the tree*.
Note that a function can appear multiple times; once for each appearance in the overall calling context tree.

## Limiting tree depth

For larger programs, the complete calling tree can grow into thousands or millions of nodes.
The *depth=<N>* suboption can be used to limit it.

```
% bin/wizeng --monitors=profile{depth=2} test/wizeng/calls1.wasm 
  *                                          nested        self    self %     count
  func "main"                             0.000876s   0.000707s   80.707%         1
    func "bar"                            0.000120s   0.000098s   11.187%        30
    func "foo"                            0.000045s   0.000045s    5.136%        60
    func "baz"                            0.000004s   0.000004s    0.456%        10
```

## Specifying a call filter

Larger programs may have many irrelevant functions, which is why the `profile` monitor also accepts the `calls` suboption to select a subset of calls to profile.
It accept a *function filter*, which can be a glob or a function range.

```
% bin/wizeng --monitors=profile{calls=b*} test/wizeng/calls1.wasm 
  *                                          nested        self    self %     count
  func "bar"                              0.000126s   0.000108s   85.714%        30
    func "baz"                            0.000018s   0.000018s   14.285%        30
  func "baz"                              0.000007s   0.000007s  100.000%        10
```