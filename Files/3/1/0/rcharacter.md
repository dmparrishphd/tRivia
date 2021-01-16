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
|    `characters` | The elements to choose from |
|    `lineLength` | A function of one variable (an maximum value) that returns |
