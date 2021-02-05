read.csv.header
===============

Read header of CSV file.

Usage
-----

    read.csv.header(file, ...)

| Argument | Description                           |
| -------: | :------------------------------------ |
|   `file` | full path and filename to a CSV file. |
|    `...` | passed to `scan` (expert use)         |

Value
-----

The column labels of the CSV file.
Any null character in the file are discarded.

Details
-------

`...` should probably be used only to specify the encoding.


