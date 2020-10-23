b.match1All
===========

| Argument | Description |
| -------: | :---------- |
| `x` | passed to `FUN` as its first argument |
| table | each element is passed fo FUN, in turn |
| FUN | a `function` of two arguments, returning a `logical`, non-`NA`--value indicating whether the two arguments match |

Value
-----

A `logical` vector indicating whether `x` matches the corresponding element of `table`.

Example
-------

    # match1 DEFINED ELSEWHERE IN THE alignment PROTOPACKAGE
    b.match1All(1, -2:2, match1) 
    # [1] FALSE FALSE FALSE  TRUE FALSE
