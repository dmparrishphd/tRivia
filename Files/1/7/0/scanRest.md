1/7/0/scanRest
==============

scan remaining text from a file.

Usage
-----

    scanRest(
        file,
        sep="\n",
        na.strings=character(),
        quiet=T,
        blank.lines.skip=F,
        skipNul=T,
        ...)

Value
-----

A `character` vector representing the remaining contents of the file.

Details
-------

A wrapper for `scan`.
All arguments are passed to `scan`, which is called with `what=""`.

The defaults are selected with the intent of reading the rest of the text in the file almost as-is.

Null characters are skipped by default because they are not allowed in `character` strings.

Reminder: by default, end-of-line markers are not represented in the return value.
