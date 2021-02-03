A Style Guide for R Source Code
===============================

*DRAFT*

----

*Disclaimer:* These are merely _ideas_, _not_ recommendations.

Parsing
-------

Do your own parsing: speak volumes by saying nonthing.

    anUnladenSwallow <- 42
    airSpeedVelocity <- 43
    airSpeedVelocity<-anUnladenSwallow
    # WHAT DO YOU MEAN?
    # AN ASSIGNMENT?
    airSpeedVelocity <- anUnladenSwallow
    # OR A COMPARRISON?
    airSpeedVelocity < -anUnladenSwallow

Definitions
-----------

Most of the code should be definitions.

    foo <- function ( arguments , ... ) {
        
        invisible () }

----

*DRAFT*
