lowerBoundStd <- function ( x , bounds ) {
    stopifnot (
        is.numeric (      x ) ,
        is.numeric ( bounds ) ,
        all ( is.finite (      x ) ) ,
        all ( is.finite ( bounds ) ) ,
        ! is.unsorted ( bounds ) ,
        min ( bounds ) <= min ( x ) )
    rbounds <- rev ( bounds )
    rbounds [[ match ( TRUE , rbounds <= min ( x ) ) ]] }
