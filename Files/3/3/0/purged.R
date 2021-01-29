purged <- function ( X , .names ) {
    i <- match ( .names , names ( X ) )
    i <- i [ is.finite ( i ) ]
    if ( ! length ( i ) ) X else X [ - i ] }
