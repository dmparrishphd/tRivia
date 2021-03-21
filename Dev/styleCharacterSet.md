Character Set
-------------

### Non-graphic characters

A non-graphic character is one which does not mark the display device.
Examples include space and line feed (also, "linefeed" or "line-feed").

**Principle**: Source code should be human-readable by seeing persons.
(This does _not_ mean that source code should not be readable by non-seeing persons.)

**Fact**: When there is more than one kind of invisible character,
it is impossible to tell them apart by visual inspection.

_Therefore_: The number of _invisible_ characters should be minimized.

**Fact**: R borrows heavily from _English_.
Evidence: `ls("package:base")` reveals that most (it seems) non-hidden objects in `base` are:
common English words (e.e., `write`),
combinations of common English words (e.g., `row.names`), or
abbreviations of (or combinations of abreviations of) common English words (e.g., `substr`, "substring").

**Fact**: For hundreds of years, in English prose and poetry, 1)
blank space has been used to separate words and 2)
long passages of text have been broken into lines.

_Therefore_: Readers of English expect 1)
words to be separated by spaces and 2)
long passages of text to be broken into lines.

**Fact** [_Writing R Extensions_](https://cran.r-project.org/manuals.html)
contains the following "advice" (section 1.1.5 Package subdirectories, emphasis added):

> _Only ASCII characters (and the control characters tab,
> formfeed, LF and CR) should be used in code files._ Other
> characters are accepted in comments, but then the comments may
>  not bereadable in e.g. a UTF-8 locale.  Non-ASCII characters
>  in object names will normally fail when the  package is
>  installed. Any byte will be allowed in a quoted character
>  string but \[`uxxxx`\] escapes should be used for non-ASCII
>  characters. However, non-ASCII character strings may not be
>  usable in some locales and may display incorrectly in others.

**Assumption**: In the above quote "ASCII characters" refers to the _printing_
[ASCII characters](https://en.wikipedia.org/wiki/ASCII)
(codes 32--126)

_Therefore_: the non-graphic characters are constrained to
`SPC`, `TAB`, `FF`, `LF`, and `CR` (space, tab, form feed, line feed, carriage return).

**Fact**: `CR`, `LF`, or both are _needed_ in order to break lines of text on R's
[target platforms](http://lib.stat.cmu.edu/R/CRAN/).

_Therefore_: We must accept `CR`, `LF`, or both as members of the character set.

**Fact**: In order to reliably produce visual separation between words, `SPC` is _needed_.

**Fact**: An arbitrary number of spaces can be substituted for each `TAB` in order to produce source code that presents visually in the same manner as if `TAB`'s were used.
Additionally, using spaces instead of `TAB`'s provides for a consistent presentation without knowledge of tab stops.

_Therefore_: `TAB`'s are not _needed_ in source code.

**Fact**: `FF` is not _needed_ in source code.

**Conclusion**: If non-graphic characters appear in an R source code file (.R), they should match `SPC`, `CR`, or `LF`.
