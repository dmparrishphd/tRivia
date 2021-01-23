ibin <- function ( n , bits = 32L )
        if ( is.na ( n ) ) {
            c ( rep ( 0L , bits - 1L ) , 1L )
        } else {
            X <- seq_len ( bits - 1L ) - 1L
            FUN <- function ( i ) {
                MASK <- bitwShiftL ( 1L , i )
                ! ! bitwAnd ( n , MASK ) }
            FUN.VALUE <- 1L
            LO <- vapply ( X , FUN , FUN.VALUE )
            c ( LO , n < 0 ) }
