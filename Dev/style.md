A Style Guide for R Source Code
===============================

*DRAFT*

----

*Disclaimer:* These are merely _ideas_, _not_ recommendations.

Parsing
-------

Do your own parsing: comminicate intent with nothing (whitespace).

    n<--42
    n <--42
    n < - -42
    n <- -42

Definitions
-----------

Most of the code should be definitions.

    foo <- function ( arguments , ... ) {
        
        invisible () }

----

*DRAFT*
