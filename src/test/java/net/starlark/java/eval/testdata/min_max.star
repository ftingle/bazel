# min / max

assert_eq(min("abcdefxyz".elems()), "a")
assert_eq(min("test", "xyz"), "test")

assert_eq(min([4, 5], [1]), [1])
assert_eq(min([1, 2], [3]), [1, 2])
assert_eq(min([1, 5], [1, 6], [2, 4], [0, 6]), [0, 6])
assert_eq(min([-1]), -1)
assert_eq(min([5, 2, 3]), 2)
assert_eq(min({1: 2, -1 : 3}), -1)
assert_eq(min({2: None}), 2)
assert_eq(min(-1, 2), -1)
assert_eq(min(5, 2, 3), 2)
assert_eq(min(1, 1, 1, 1, 1, 1), 1)
assert_eq(min([1, 1, 1, 1, 1, 1]), 1)
assert_eq(min([None]), None) # not an error: no comparisons required

assert_eq(max("abcdefxyz".elems()), "z")
assert_eq(max("test", "xyz"), "xyz")
assert_eq(max("test", "xyz"), "xyz")
assert_eq(max([1, 2], [5]), [5])
assert_eq(max([-1]), -1)
assert_eq(max([5, 2, 3]), 5)
assert_eq(max({1: 2, -1 : 3}), 1)
assert_eq(max({2: None}), 2)
assert_eq(max(-1, 2), 2)
assert_eq(max(5, 2, 3), 5)
assert_eq(max(1, 1, 1, 1, 1, 1), 1)
assert_eq(max([1, 1, 1, 1, 1, 1]), 1)
assert_eq(max([None]), None) # not an error: no comparisons required

---
min(1)  ### type 'int' is not iterable
---
min()  ### expected at least one item
---
min([])  ### expected at least one item
---
min(1, "2", True) ### unsupported comparison: int <=> string
---
min([1, "2", True]) ### unsupported comparison: int <=> string
---
max(1) ### type 'int' is not iterable
---
max() ### expected at least one item
---
max([]) ### expected at least one item
---
max(1, '2', True) ### unsupported comparison: int <=> string
---
max([1, '2', True]) ### unsupported comparison: int <=> string
