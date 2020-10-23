match1All
=========

Usage
-----

    match1All(...)

| Argument | Description |
| -------: | :---------- |
|      ... | passed to `b.match1All` |

Value
-----

All the indices of `table` where a value matching `x` is found.

Details
-------

See definition of `b.match1All` for information on `table` and `x`.

Example
-------

    match1All(1, c(2, 3, 3, 4, 4, 5), match1)
    # integer(0)
    match1All(3, c(2, 3, 3, 4, 4, 5), match1)
    # [1] 2 3
    
