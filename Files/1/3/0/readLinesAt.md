readLinesAt
===========

Read arbitrary lines from an open connection.

Usage
-----

    readLinesAt(con, where=0, ...)
    
| Argument | Description |
| -------: | :--------------------------------- |
|    `con` | A connection open in "r" mode      |
|  `where` | A numeric vector of file positions |
|    `...` | passed to `readLines`              |

Value
-----

A `character` vector where
Each element corresponds to the character string beginning at the file position specified by the corresponding element of `where` and ending at the end of the line.
If there is no data at a particular position, an `NA_character_` value will be found at the corresponding location in the vector.
