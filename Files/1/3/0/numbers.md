File Tree Numbering System
==========================

**Most** file paths to non-terminal directories are specified using base-7
[bijective numeration](https://en.wikipedia.org/wiki/Bijective_numeration).
This is the same kind of numbering system used in many popular spreadsheet programs
(such as
[Libre Office Calc](https://www.libreoffice.org/discover/calc/)),
except that the digits 1-7 are used instead of the letters A-Z
for the numerals.

The first few non-terminal file paths are

1 2 3 4 5 6 7

1/1 1/2 1/3 1/4 1/5 1/6 1/7

2/1 2/2 2/3

The first few terminal file paths are

0

1/0 2/0 3/0 4/0 5/0 6/0 7/0

1/1/0 1/2/0 1/3/0 1/4/0 1/5/0 1/6/0 1/7/0

2/1/0 2/2/0 2/3/0

Which we might abbreviate

""

"1" "2" "3" "4" "5" "6" "7"

"11" "12" "13" "14" "15" "16" "17"

"21" "22" "23"

By "terminal" we mean that the pattern of bijective numeration
does not continue into subdirectories of those paths.

Exceptions
----------

I said _most_ file paths are specified using base-7 bijective
numeration.
There will be exceptions, both intentional and unintentional.
