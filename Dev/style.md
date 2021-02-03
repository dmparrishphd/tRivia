A Style Guide for R Source Code
===============================

**DRAFT**

----

*Disclaimer:* These are merely _ideas_, _not_ recommendations.

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

_Reserve_ the first character-column of text for the first character of identifiers:

    # PREFERRED
    foo <- function ( ) {
        "bar" }
    
    # NOT PREFERRED
    foo <- function ( ) {
        "bar"
    }
    
Such a source file can be searched very quickly for the identifers defined therein.

Definitions
-----------

Most of the code should be definitions.

    foo <- function ( arguments , ... ) {
        
        invisible () }

----

**DRAFT**
