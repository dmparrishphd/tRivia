read.tsv
========

"Reads a file in [TSV] format and creates a data frame from it,
with cases corresponding to lines and variables to fields in the
file" (`help(read.table)`).

Usage
-----

    read.tsv(
        file = "",
        nrows = -1,
        skip = 0,
        strict = TRUE,
        blank.lines.skip = FALSE,
        comment.char = "",
        stringsAsFactors = FALSE,
        fileEncoding = "",
        encoding = "unknown",
        text,
        skipNul = TRUE)

|           Argument | Description |
| -----------------: | :---------- |
|             `file` | optionally passed to `read.table` (see Details) |
|            `nrows` | passed to `read.table` |
|             `skip` | passed to `read.table` |
|           `strict` | non-`NA` `logical` value; if `TRUE`, apply TSV standard strictly |
| `blank.lines.skip` | passed to `read.table` _if not srict_ |
|     `comment.char` | passed to `read.table` _if not srict_ |
| `stringsAsFactors` | passed to `read.table` |
|     `fileEncoding` | passed to `read.table` |
|         `encoding` | passed to `read.table` |
|             `text` | optionally passed to `read.table` (see Details) |
|          `skipNul` | passed to `read.table` |

Value
-----

A `data.frame` with `names` according to the header found in
`file` or `text`.

All columns are `character` or `factor`, according to the
`stringsAsFactors` argument
([KISS](https://en.wikipedia.org/wiki/KISS_principle),
see also definition of
\[<a href="#TSV">TSV</a>\]).

Details
-------

The behavior with regard to the `file` and `text` arguments is
the same as for `read.table`.

`read.tsv` is not designed to handle embedded nulls per se;
by default they are skipped per the suggestion in `help(read.table)`:
"Embedded nuls are unsupported: skipping them (with `skipNul = TRUE`) may work."
 
Reference
---------

<a id="TSV">\[TSV\]</a>
Internet Assigned Numbers Authority, IANA (Downloaded 2021-02-10)
Definition of tab-separated-values (tsv).
[https://www.iana.org/assignments/media-types/text/tab-separated-values](https://www.iana.org/assignments/media-types/text/tab-separated-values)

See Also
--------
Wikimedia Foundation, Inc. (Downloaded 2021-02-10) Tab-separated values.
[https://en.wikipedia.org/wiki/Tab-separated\_values](https://en.wikipedia.org/wiki/Tab-separated_values)
