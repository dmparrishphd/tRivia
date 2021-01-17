rcharacter
==========

Usage
-----

    .rcharacter(
        nlines=1,
        maxLineLength=64,
        characters=vapply(32:126, intToUtf8, ""),
        lineLength=function(n) min(n, runif(n=1, min=1, max=n + 1)))

    rcharacter(...)
    
|        Argument | Description |
| --------------: | :---------- |
|        `nlines` | The number of outer elements to create |
| `maxLineLength` | The maximum number of inner elements per outer element |
|    `characters` | A `character` vector, each element of `nchar` 1 |
|    `lineLength` | A function of one variable (an maximum value) that returns an `nchar` value |

Value
-----

`.rcharacter` returns a `list` of `character` vectors.
Each element of the return is of length according to the return of `lineLength`.
Each element of the `character` vectors is one of `characters`.

`rcharacter` is simlar to `.rcharacter`, except that the return is a `character` vector of length `nlines`.
Each of the elements is a character string with members chosen from `characters`.

Examples
--------

    .rcharacter(nlines=3, maxLineLength=8)
    # [[1]]
    # [1] "4" "g" ":" "'" "t" "R"
    # 
    # [[2]]
    # [1] "C"  "R"  "/"
    # 
    # [[3]]
    # [1] "^" "," "}"
    rcharacter(nlines=3, maxLineLength=8)
    # [1] "utK3C-" "s"      "DNwaO*"
