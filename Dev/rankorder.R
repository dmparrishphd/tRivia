rankorder <- function ( ... , na.last = TRUE , decreasing = FALSE ,
        method = eval ( formals ( order ) $ method ) ) {
    method <- match.arg ( method ) # WANT THIS TO FAIL EARLY IF GOING TO FAIL
    `%|%` <- function ( x , f ) f ( x )
    X <- list ( ... )
    ARGC <- length ( X )
    na.last <- rep_len ( na.last , length.out = ARGC )
    decreasing <- rep_len ( decreasing , length.out = ARGC )
    RANK <- c ( rank , rankrev ) [ 1L + decreasing ]
    FUN <- function ( i ) RANK [[ i ]] (
        x = X [[ i ]] ,
        ties.method = "min" ,
        na.last = na.last [[ i ]] )
    FUN.VALUE <- X [[ 1 ]] %|% length %|% double
    RANKS <- vapply (
        FUN = FUN ,
        USE.NAMES = FALSE ,
        X = X %|% seq_along ,
        FUN.VALUE = FUN.VALUE )
    ARGS <- c ( method = method , RANKS %|% as.data.frame )
    do.call ( order , ARGS ) }
