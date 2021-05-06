upperBoundStd <- function ( x , bounds ) {
    stopifnot (
        is.numeric (      x ) ,
        is.numeric ( bounds ) ,
        all ( is.finite (      x ) ) ,
        all ( is.finite ( bounds ) ) ,
        ! is.unsorted ( bounds ) ,
        max ( x ) <= max ( bounds ) )
    bounds [[ match ( TRUE , ! ( bounds < max ( x ) ) ) ]] }
