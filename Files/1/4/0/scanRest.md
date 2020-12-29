scanRest
========

scan the remainder of a file.

scan an entire file.

Usage
-----

    scanRest(file, quiet=T)

| Argument | Description      |
| -------: | :--------------- |
|   `file` | passed to `scan` |
|  `quiet` | passed to `scan` |

Value
-----

A `character` vector containing the text found from the current file position of `file` to the end-of-file.

If `file` is a valid file path (`character` string), the file position is the beginning of the file.


Example
-------

    # THIS EXAMPLE **** OVERWRITES **** A FILE CALLED trash IN THE WORKING DIRECTORY.
    cat("AS YOU WISH\n", file="trash")
    scanRest("trash")
    # [1] "AS YOU WISH"
    cat("WHAT ABOUT THE R-O-U-SES?\n", file="trash", append=T)
    scanRest("trash")
    # [1] "AS YOU WISH"
    # [2] "WHAT ABOUT THE R-O-U-SES?"
    cat("I DON'T THINK THEY EXIST\n", file="trash", append=T)
    f <- file("trash", "rt")
    scan(f, what="", sep="\n", n=1, quiet=T)
    # [1] "AS YOU WISH"
    scanRest(f)
    # [1] "WHAT ABOUT THE R-O-U-SES?"
    # [2] "I DON'T THINK THEY EXIST" 
    close(f)
