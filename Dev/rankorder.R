rankorder <- function ( ... , na.last = TRUE , decreasing = FALSE ,
        method = eval ( formals ( order ) $ method ) ) {
    `%|%` <- function ( x , f ) f ( x )
    method <- match.arg ( method ) 
    X <- list ( ... )
    ARGC <- length ( X )
    na.last <- rep_len ( na.last , length.out = ARGC )
    decreasing <- rep_len ( decreasing , length.out = ARGC )
    rank. <- c ( rank , rankrev ) [ 1L + decreasing ]
    FUN <- function ( i ) rank. [[ i ]] (
        x = X [[ i ]] ,
        ties.method = "min" ,
        na.last = na.last [[ i ]] )
    LENGTH1 <- X [[ 1 ]] %|% length
    vector. <- if ( LENGTH1 <= .Machine$integer.max ) integer else double
    FUN.VALUE <- vector. ( LENGTH1 )
    Y <- vapply ( FUN = FUN , USE.NAMES = FALSE , X = X %|% seq_along ,
        FUN.VALUE = FUN.VALUE )
    args <- c ( method = method , Y %|% as.data.frame )
    do.call ( order , args ) }
    
