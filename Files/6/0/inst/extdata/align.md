align
=====

Usage
-----

    align(..., Match=match, Unique=unique)

| Argument | Description |
| -------: | :---------- |
|   `...`  | `vectors` or `list`-s of values |
|  `Match` | a function of two arguments used to decide whether elements from among all those in the elements of `...` match any of the unique values (see `Unique`). |
| `Unique` | a function that determines the unique values from among all the elements of the elements of `...`       |
             
Value
-----

A `data.frame` indicating, for each of the unique elements,
where they are found among the elements of `...`

The unique values are found in the last element of the return.
The columns (except the last) correspond to the elements of `...`.

Example
-------

    # match1All AND match1 ARE DEFINED ELSEWEHRE IN THE alignment PROTOPACKAGE
    align(
        strsplit("AS YOU WISH", " ")[[1]], 
        strsplit("WISH DID SOMEBODY SAY WISH", " ")[[1]],
        Match=function(x, table) match1All(x, table, FUN=match1))
        
        I1   I2    VALUE
    # 1  1            AS
    # 2  2           YOU
    # 3  3 1, 5     WISH
    # 4       2      DID
    # 5       3 SOMEBODY
    # 6       4      SAY
