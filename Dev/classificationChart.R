classificationChart <- function ( X , FUNS )
		lapply ( FUNS , function ( fun ) which ( fun ( X ) ) )

vectorize.classifications <- function ( X ) {
	Classes <- integer ( max ( unlist ( X ) ) )
	for ( i in seq_along ( X ) ) Classes [ X [[ i ]] ] <- i
	Classes }

