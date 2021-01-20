lsearch
=======

Find an element in a container.

Usage
-----

    .lsearch(x, table, compar=`==`, extract=`[[`)
    lsearch(...)

|  Argument | Desscription                                                              |
| --------: | :------------------------------------------------------------------------ |
|       `x` | An item to find                                                           |
|   `table` | A container to search                                                     |
|  `compar` | A function that compares `x` with any element of `table`                  |
| `extract` | A function that extracts an element from `table` for comparrison with `x` |
|     `...` | passed to `.lsearch`                                                      |

Details
-------

The `compar` function should return `TRUE` when `x` matches an element of `table`.
The `compar` function is called with `x` as the first argument and the table element as the second argument.
The `compar` function need not be commutative.

The `extract` function is called with `table` as its first argument, and
an integer index as its second argument,
consistent with `[[`.

Value
-----

If no match is found, `lsearch` returns `0L`, while `.lsearch` returns `NULL`.

If a match is found an `integer` index of `table` indicating the first element in `table` that matches `x`.
