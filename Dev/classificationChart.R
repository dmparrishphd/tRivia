classificationChart <- function ( X , FUNS )
		lapply ( FUNS , function ( fun ) which ( fun ( X ) ) )
