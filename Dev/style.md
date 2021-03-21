A Style Guide for R Source Code
===============================

**DRAFT**

----

**Disclaimer:** These are merely _ideas_, _not_ recommendations.

Character Set
-------------

Do not include characters other than the printing ASCII characters (including space) and the two ASCII control characters `CR` and / or `LF`.

The printing [ASCII characters](https://en.wikipedia.org/wiki/ASCII)
have codes 32 through 126.

Parsing
-------

Do your own parsing: speak volumes by saying nonthing.

    anUnladenSwallow <- 42
    airSpeedVelocity <- 43
    airSpeedVelocity<-anUnladenSwallow # WHAT DO YOU MEAN?
    airSpeedVelocity <- anUnladenSwallow # AN ASSIGNMENT?
    airSpeedVelocity < -anUnladenSwallow # OR A COMPARRISON?

The Source File
===============

### Layout---Special Columns

_Reserve_ the first character-column of text for the first character of identifiers:

    # PREFERRED
    foo <- function ( ) {
        "bar" }
    
    # NOT PREFERRED
    foo <- function ( ) {
        "bar"
    }
    
Such a source file can be searched very quickly for the identifers defined therein.

### Layout---Number of Columns

Use no more than 80 character-columns; the end-of-line marker counts as one character.

Use no more than 64 character-columns of printing characters, in most cases.

### Layout---Long Lines

Continue a function parameter list with _two additional_ indents.

Continue other lists of items within grouping symbols with _one additional_ indent.

Continue other long lines with _two additional_ indents.

    #        1         2         3         4         5         6
    #234567890123456789012345678901234567890123456789012345678901234
    foo <- function ( parameter , parameter2 , parameter3 ,
            parameter4 ) {
        #TODO: FINISH EXAMPLE.
        }
        
### Lists

_not necessarily_ `lists`_'s_

Continue a multi-line list at _one additional_ indent, but do not  _further_ additional lines.

    # PREFERRED #1
    c ( A = 1 ,
        B = 2 ,
        C = 3 )
    # PREFERRED #2
     data.frame (
        A = 1 ,
        B = 2 ,
        C = 3 )

    # NOT PREFERRED #1
    c ( A = 1 ,
        B = 2 ,
            C = 3 )
    # NOT PREFERRED #2
     data.frame (
        A = 1 ,
            B = 2 ,
                C = 3 )

Identifiers
-----------

Do not use spaces in identifiers, not even quoted ones.

    # NOT PREFERRED #1
    `variable name`
    
    # PREFERRED
    variableName
    variable.name
    variable_name

Definitions
-----------

Most of the code should be definitions.

    foo <- function ( arguments , ... ) {
        invisible () }

----

**DRAFT**
