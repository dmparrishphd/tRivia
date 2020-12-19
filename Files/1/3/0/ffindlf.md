ffindlf
=======

Find file positions of line feed characters (ASCII 10).

Usage
-----

    ffindlf(filename, where=0, n=1024L)

|   Argument | Description                                      |
| ---------: | :----------------------------------------------- |
| `filename` | path to a file to be opened                      |
|    `where` | the file position at which to begin searching    |
|        `n` | the number of bytes to attempt to read at a time |

Value
-----

A numeric vector of indices which are one more than the file positions of line feed characters found.

The value can be interpreted as the file positions at which the next lines beyond `where` begin.

Alternatively, if the first file position is taken as 1 rather than 0,
the indices of the line feed characters found.

Notes
-----

If one knows the `where` the last line of a file is, and
the file is subsequently appended,
a call to `ffindlf` with that `where` argument should return
the positions of the beginnings of the appended lines.

Examples
--------

write("this is a test", file="trash")
ffindlf("trash")
# [1] 16
write("this is another test", file="trash", append=TRUE)
ffindlf("trash")
# [1] 16 38
ffindlf("trash", 16)
# [1] 38
close(f)

