mgrepl
======

Higher order `grepl`

Usage
-----

    mgrepl(patterns, x, ...)
 
|   Argument | Description                    |
| ---------: | :----------------------------- |
| `patterns` | a character vector of patterns |
|        `x` | a character vector             |
|      `...` | passed to `grepl`              |

Value
-----

A `logical matrix` with
a number of rows equal to the `length` of `patterns` and
a number of columns equal to the `length` of `x`.
Each element tells whether the corresponding element of `x` matches the corresponding pattern.

Examples
--------

    mgrepl(c("[0-9]", "[A-Z]"), c("AS YOU WISH", "42"))
    #       [,1]  [,2]
    # [1,] FALSE  TRUE
    # [2,]  TRUE FALSE
