purged
======

remove named elments from a vector

Usage
-----

    purged(X, .names)

| Argument | Description                       |
| -------: | :-------------------------------- |
|      `X` | a `vector`, `list`, or data.frame |
| `.names` | names of elements to be removed   |

Value
-----

A modified copy of `X`, without the elements whose names are specified by `.names`.

Warning
-------

For a given element of `.names`,
only the _first_ element `X` so named will be elminated.

Examples
--------

    purged(list() , "A")
    # list()
    purged(list(A=1, B=2) , "A")
    # $B
    # [1] 2
    purged(list(A=1, B=2) , c("A", "B"))
    # named list()
    purged(list(A=1, A=2) , "A")
    # $A
    # [1] 2
    # purged(c(MISSING=1), "MISSING")
    # named numeric(0)
