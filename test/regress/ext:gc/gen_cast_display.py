#!/usr/bin/env python3
# Copyright 2026 Wizard authors. All rights reserved.
# See LICENSE for details of Apache 2.0 license.

# Generates regression tests for casts against struct hierarchies, which compiled code implements with
# descriptor comparisons and displays. Covers all tree-shaped hierarchies of up to 5 structs, with
# non-final types, final leaves, and the hierarchy in one rec group. Each test casts every value
# (each struct in the hierarchy, structs of an unrelated hierarchy, an i31, an array, null, and a
# host reference) to every type (each struct, its canonically-equal duplicate, the unrelated
# structs, and the abstract types), with ref.test, ref.cast, br_on_cast, or br_on_cast_fail.
#
# Usage: gen_cast_display.py [output directory]; then build the .bin.wast files with build.sh.

import os
import sys

MAX_NODES = 5
FIELD_TYPES = ["i32", "i64", "f32", "f64", "i8"]  # distinct per node, so all types are distinct
ABSTRACT = ["any", "eq", "i31", "struct", "array", "none"]
OPS = ["test", "cast", "br", "brfail"]
VARIANTS = ["open", "final", "rec"]

# Enumerates rooted unordered trees as parent arrays (node 0 is the root, parent[i] < i).
def trees(n):
    seen = {}
    def canon(parent, node):
        kids = sorted(canon(parent, c) for c in range(len(parent)) if parent[c] == node and c != node)
        return "(" + "".join(kids) + ")"
    def gen(parent):
        if len(parent) == n:
            key = canon(parent, 0)
            if key not in seen: seen[key] = list(parent)
            return
        for p in range(len(parent)):
            gen(parent + [p])
    gen([0])
    return list(seen.values())

def ancestors(parent, i):
    result = {i}
    while i != 0:
        i = parent[i]
        result.add(i)
    return result

def has_children(parent, i):
    return any(parent[c] == i for c in range(1, len(parent)))

# Struct type definitions for a hierarchy with the given {prefix}.
def hierarchy_defs(prefix, parent, variant):
    defs = []
    for i in range(len(parent)):
        fields = [FIELD_TYPES[j] for j in sorted(ancestors(parent, i))]
        fields_text = " ".join("(field %s)" % f for f in fields)
        sub = ["sub"]
        if variant == "final" and not has_children(parent, i): sub.append("final")
        if i != 0: sub.append("$%s%d" % (prefix, parent[i]))
        defs.append("(type $%s%d (%s (struct %s)))" % (prefix, i, " ".join(sub), fields_text))
    if variant == "rec":
        return ["(rec", *["  " + d for d in defs], ")"]
    return defs

class Value:
    def __init__(self, name, make, kind, hier=None, node=None):
        self.name, self.make, self.kind, self.hier, self.node = name, make, kind, hier, node

class Target:
    def __init__(self, text, kind, nullable, hier=None, node=None):
        self.text, self.kind, self.nullable, self.hier, self.node = text, kind, nullable, hier, node
    def ref(self):
        return "(ref %s%s)" % ("null " if self.nullable else "", self.text)

def values_for(parent):
    vals = [Value("t%d" % i, "(struct.new_default $t%d)" % i, "struct", "t", i) for i in range(len(parent))]
    vals += [Value("x%d" % i, "(struct.new_default $x%d)" % i, "struct", "x", i) for i in range(2)]
    vals += [
        Value("i31", "(ref.i31 (i32.const 7))", "i31"),
        Value("array", "(array.new_default $arr (i32.const 1))", "array"),
        Value("null", "(ref.null none)", "null"),
        Value("host", "(any.convert_extern (local.get $host))", "host"),
    ]
    return vals

def targets_for(parent):
    targets = []
    for nullable in [False, True]:
        for i in range(len(parent)):
            targets.append(Target("$t%d" % i, "concrete", nullable, "t", i))
            targets.append(Target("$u%d" % i, "concrete", nullable, "t", i))  # canonically equal to $t{i}
        for i in range(2):
            targets.append(Target("$x%d" % i, "concrete", nullable, "x", i))
        for a in ABSTRACT:
            targets.append(Target(a, a, nullable))
    return targets

X_PARENT = [0, 0]  # the unrelated hierarchy: $x1 <: $x0

# Whether {v} is an instance of {t}, per the Wasm GC subtyping rules.
def is_instance(v, t, parent):
    if v.kind == "null": return t.nullable
    if t.kind == "concrete":
        if v.kind != "struct" or v.hier != t.hier: return False
        return t.node in ancestors(parent if v.hier == "t" else X_PARENT, v.node)
    if t.kind == "any": return True
    if t.kind == "eq": return v.kind in ("struct", "array", "i31")
    if t.kind == "none": return False
    return v.kind == t.kind  # i31, struct, array

def func_name(t):
    name = t.text.replace("$", "")
    return ("null_" if t.nullable else "") + name

def gen_func(op, t):
    f = func_name(t)
    get = "(table.get $vals (local.get 0))"
    if op == "test":
        return "  (func (export \"%s\") (param i32) (result i32) (ref.test %s %s))" % (f, t.ref(), get)
    if op == "cast":
        return "  (func (export \"%s\") (param i32) (result i32) (ref.is_null (ref.cast %s %s)))" % (f, t.ref(), get)
    if op == "br":
        return ("  (func (export \"%s\") (param i32) (result i32)\n"
                "    (block $l (result %s) (br_on_cast $l anyref %s %s) (drop) (return (i32.const 0)))\n"
                "    (drop) (i32.const 1))") % (f, t.ref(), t.ref(), get)
    # brfail: returns 1 if the cast failed (the branch was taken)
    return ("  (func (export \"%s\") (param i32) (result i32)\n"
            "    (block $l (result anyref) (br_on_cast_fail $l anyref %s %s) (drop) (return (i32.const 0)))\n"
            "    (drop) (i32.const 1))") % (f, t.ref(), get)

def gen_assert(op, t, index, v, parent):
    ok = is_instance(v, t, parent)
    call = "(invoke \"%s\" (i32.const %d))" % (func_name(t), index)
    comment = " ;; %s" % v.name
    if op == "test": return "(assert_return %s (i32.const %d))%s" % (call, 1 if ok else 0, comment)
    if op == "cast":
        if not ok: return "(assert_trap %s \"cast failure\")%s" % (call, comment)
        return "(assert_return %s (i32.const %d))%s" % (call, 1 if v.kind == "null" else 0, comment)
    if op == "br": return "(assert_return %s (i32.const %d))%s" % (call, 1 if ok else 0, comment)
    return "(assert_return %s (i32.const %d))%s" % (call, 0 if ok else 1, comment)

def gen_test(parent, variant, op):
    vals, targets = values_for(parent), targets_for(parent)
    shape = " ".join("%d<:%d" % (i, parent[i]) for i in range(1, len(parent))) or "root only"
    out = [";; Generated by gen_cast_display.py; do not edit.",
           ";; ref.%s casts for hierarchy [%s], variant %s." % (op, shape, variant),
           "(module"]
    out += ["  " + d for d in hierarchy_defs("t", parent, variant)]
    out += ["  " + d for d in hierarchy_defs("u", parent, variant)]  # identical, so canonically equal
    out += ["  (type $x0 (sub (struct (field v128))))",
            "  (type $x1 (sub $x0 (struct (field v128) (field v128))))",
            "  (type $arr (array i8))",
            "  (table $vals %d anyref)" % len(vals),
            "  (func (export \"init\") (param $host externref)"]
    out += ["    (table.set $vals (i32.const %d) %s)" % (i, v.make) for i, v in enumerate(vals)]
    out += ["  )"]
    out += [gen_func(op, t) for t in targets]
    out += [")", "(invoke \"init\" (ref.extern 1))"]
    for t in targets:
        out += [gen_assert(op, t, i, v, parent) for i, v in enumerate(vals)]
    return "\n".join(out) + "\n"

def main():
    outdir = sys.argv[1] if len(sys.argv) > 1 else os.path.dirname(os.path.abspath(__file__))
    count = 0
    for n in range(1, MAX_NODES + 1):
        for k, parent in enumerate(trees(n)):
            for variant in VARIANTS:
                for op in OPS:
                    name = "cast_display_n%d_s%d_%s_%s.wast" % (n, k, variant, op)
                    with open(os.path.join(outdir, name), "w") as f:
                        f.write(gen_test(parent, variant, op))
                    count += 1
    print("generated %d tests" % count)

if __name__ == "__main__":
    main()
