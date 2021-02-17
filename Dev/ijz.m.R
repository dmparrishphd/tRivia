ijz.m <- function ( m )
        data.frame ( 
	        arrayInd ( seq_along ( m ) , dim ( m ) ) ,
	        as.vector ( m ) )

