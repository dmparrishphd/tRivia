naTo0
=====

Replace `NA` with `0L`.

Usage
-----

naTo0(x)

| Argument | Description |
| -------: | :---------- |
|      `x` | a `vector`  |

Value
-----

A modified copy of `x`, where all `NA`-values have been replaced by zero (`0L`, with the default promotions).

Details
-------

Intended for numeric vectors.

Examples
--------

    naTo0(NA)
    # [1] 0
    str(naTo0(NA))
    # int 0
    naTo0(c("...", NA, NA, NA, NA, NA, NA, NA, NA, "Batman"))
    # [1] "..."    "0"      "0"      "0"      "0"      "0"      "0"      "0"      "0"      "Batman"
    > naTo0(list(NA, NA_integer_, NA_real_, NA_complex_, NA_character_))
    # [[1]]
    # [1] 0
    # 
    # [[2]]
    # [1] 0
    # 
    # [[3]]
    # [1] 0
    # 
    # [[4]]
    # [1] 0
    # 
    # [[5]]
    # [1] 0
    # > str(naTo0(list(NA, NA_integer_, NA_real_, NA_complex_, NA_character_)))
    # List of 5
    # $ : int 0
    #  $ : int 0
    #  $ : int 0
    #  $ : int 0
    #  $ : int 0
