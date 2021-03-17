#TOP10, TOP3, ETC.
#STATUS: VERY UNFINISHED
top <- function ( X , n = 1 , j = 1 ) {
	Chosen <- TRUE
	ORDER <- do.call ( order ,  ( - ( X $ AREA ) )
	if ( nrow ( X ) <= n ) return ( X )
	X <- X [ ORDER , ]
	X [ -3 : -1 , "CHOSEN" ] <- FALSE
	X }
