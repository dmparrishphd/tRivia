mlsearch
========

Find multiple objects in a container.

Usage
-----

    mlsearch(x, table, compar = `==`, extract = `[[`, n = length(table), USE.NAMES = F)
    
|    Argument | Description                                           |
| ----------: | :---------------------------------------------------- |
|         `x` | an object                                             |
|     `table` | an object from which elements may be extracted        |
|    `compar` | a function that compares `x` with elements of `table` |
|   `extract` | a function used to extract elements from `table`      |
|         `n` | specifies the last element of `table` to be searched  |
| `USE.NAMES` | passed to `vapply`                                    |

Value
-----

A `logical` vector that indicates, for each element of `table`,
whether `x` `compar`es with that element.

Details
-------

The call `compar(x, y)`, where `y` is an element of `table`, should return either `TRUE` or `FALSE`.

The call `extract(table, i)`, where `i` is an `integer` index less than or equal to `n`,
should return an element of `table`.

Only the first `n` elements of `table` will be searched, regardless of the size of `table`.

See Also
--------

`==`, `match`, The `bsearch` function in the _C Standard Library_.

Examples
--------

    x <- c(2, 3, 3, 4, 4, 5)
    x
    # [1] 2 3 3 4 4 5
    mlsearch(x[2], x)
    # [1] FALSE  TRUE  TRUE FALSE FALSE FALSE
    y <- data.frame ( A = x , B = x )
    y
    #   A B
    # 1 2 2
    # 2 3 3
    # 3 3 3
    # 4 4 4
    # 5 4 4
    # 6 5 5
    mlsearch(y[3,], y, n = nrow(y),
	    compar = function(x, y) all(unlist(x) == unlist(y)),
	    extract = function(x, i) x[i,])
    # [1] FALSE  TRUE  TRUE FALSE FALSE FALSE
    z <- c("foo", "bar", "smurf")
    mlsearch(z[1], z, compar = function(x, y)
        any(c(x, y) == "smurf") || x == y)
    # [1]  TRUE FALSE  TRUE
