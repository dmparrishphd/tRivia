idivisions
==========

Compute boundaries of contiguous integer sequences forming a longer contiguous sequnce.

Usage
-----

    idivisions(from=1, to, by=2L)
    
| Argument | Desciption            |
| -------: | :-------------------- |
|   `from` | | passed to `seq.int` |
|     `to` | | passed to `seq.int` |
|     `by` | | passed to `seq.int` |

Value
-----

Returns a two-column `integer` `matrix` where each row represents the first and last integer in the subsequences forming the sequence `from:to`.
All but the last row should represent subsequences of equal length.
The last row takes up the remainder.

Examples
--------

    idivisions(to=12)
    #      [,1] [,2]
    # [1,]    1    2
    # [2,]    3    4
    # [3,]    5    6
    # [4,]    7    8
    # [5,]    9   10
    # [6,]   11   12
    idivisions(to=99, by=14)
    #      [,1] [,2]
    # [1,]    1   14
    # [2,]   15   28
    # [3,]   29   42
    # [4,]   43   56
    # [5,]   57   70
    # [6,]   71   84
    # [7,]   85   98
    # [8,]   99   99
