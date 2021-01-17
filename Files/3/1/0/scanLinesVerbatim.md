scanLinesVerbatim
=================

Scan lines of text

Usage
-----

    scanLinesVerbatim(
        file="",
        n=-1,
        skip=0,
        quiet=TRUE,
        fileEncoding="",
        encoding="unknown",
        text=character(),
        skipNul=TRUE)
        
|       Argument | Description      |
| -------------: | :--------------- |
|         `file` | passed to `scan` |
|            `n` | passed to `scan` |
|         `skip` | passed to `scan` |
|        `quiet` | passed to `scan` |
| `fileEncoding` | passed to `scan` |
|     `encoding` | passed to `scan` |
|         `text` | conditionally passed to `scan` |
|      `skipNul` | passed to `scan` |

Value
-----

A `character` vector containing the lines of the specified `file` or `text`.
Newline character will _not_ be represented within the elements of the return.

Details
-------

`scanLinesVerbatim` is a specialization of `scan` with alternate defaults and several fixed parameters.
The intent is to read in a text file in a manner that resembles the file as closely as possible.

`text` is passed to `scan` only if `file` is unspecified and `text` is a `character` vector of length 1.

