partial.records <- function ( X , isMissing )
        vapply ( FUN.VALUE = TRUE, X = seq_len ( nrow ( X ) ) ,
            FUN = function ( i ) any ( isMissing ( X [ i , ] ) ) )
