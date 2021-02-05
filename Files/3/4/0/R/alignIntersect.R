alignIntersect <- function ( X ) {
	V <- Reduce ( intersect , X )
	LIST <- `names<-` (
		lapply ( X , function ( x ) match ( V , x ) ),
		paste0 ( "I" , seq_along ( X ) ) )
	data.frame ( LIST , V , stringsAsFactors = FALSE ) }
