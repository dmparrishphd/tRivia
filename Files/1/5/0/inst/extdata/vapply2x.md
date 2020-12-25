vapply2x
========

Description
-----------

Two-argument variaitons of `vapply`.

Usage
-----

    vapply2e(X, FUN)
    vapply2l(X, FUN)
    vapply2n(X, FUN)

| Argument | Description        |
| -------: | :----------------- |
|      `X` | passed to `vapply` |
|    `FUN` | passed to `vapply` |

Details
-------

Each of these functions attempts to use `FUN(X[[1]])`
as the template for the return value from FUN (i.e., the value
of the `FUN.VALUE` argument).

It is an error to call `vapply2e` with an empty (i.e., having
`length` `0L`), `X` argument.

Value
-----

If `X` is empty, `vapply2l` returns `list()` while `vapply2n`
returns `NULL`.

If `X` is not empty, `X` and `FUN` are passed to a call to
`vapply` with the `USE.NAMES` argument specified as `FALSE` and
the `FUN.VALUE` argument set to `FUN(X[[1]])`.

Examples
--------

    FUN <- function(q) c(q[1] %/% q[2], q[1] %% q[2])
    X <- list(c(3, 5), c(5, 3))

    vapply2l(X, FUN)
    # [[1]]
    #      [,1] [,2]
    # [1,]    0    1
    # [2,]    3    2

    vapply2n(X, FUN)
    #      [,1] [,2]
    # [1,]    0    1
    # [2,]    3    2

    vapply2e(X, FUN)
    #      [,1] [,2]
    # [1,]    0    1
    # [2,]    3    2

    Y <- list()

    Z <- vapply2l(Y, FUN)
    Z
    # list()
    Z <- vapply2n(Y, FUN)
    Z
    # NULL
    Z <- vapply2e(Y, FUN)
    # Error in X[[1]] : subscript out of bounds
