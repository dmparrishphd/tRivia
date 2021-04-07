rankorder <- function ( ... , na.last = TRUE , decreasing = FALSE ,
        method = eval ( formals ( order ) $ method ) ) {
    method <- match.arg ( method ) # IF THIS FAILS, IT FAILS EARLY
    X <- list ( ... )
    ARGC <- length ( X )
    na.last <- rep_len ( na.last , length.out = ARGC )
    decreasing <- rep_len ( decreasing , length.out = ARGC )
    RANK <- c ( rank , rankrev ) [ 1L + decreasing ]
    FUN <- function ( i ) RANK [[ i ]] (
        x = X [[ i ]] ,
        ties.method = "min" ,
        na.last = na.last [[ i ]] )
    `%|%` <- function ( x , f ) f ( x )
    FUN.VALUE <- X [[ 1 ]] %|% length %|% double
    RANKS <- vapply (
        FUN = FUN ,
        USE.NAMES = FALSE ,
        X = X %|% seq_along ,
        FUN.VALUE = FUN.VALUE )
    ARGS <- c ( method = method , RANKS %|% as.data.frame )
    do.call ( order , ARGS ) }
