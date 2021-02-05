uncross.csv.array <- function ( X ) {
    MATRIX <- uncross.m ( as.matrix ( X [[ 1 ]] ) )
    VECTORS <- lapply ( X [ -1 ] , function ( Y ) unlist (
        Y , use.names = FALSE ) )
    cbind ( MATRIX , do.call ( cbind , VECTORS ) ) }
