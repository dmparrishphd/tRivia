ijz.m <- function ( m )
        data.frame ( 
	        `colnames<-` ( arrayInd ( seq_along ( m ) , dim ( m ) ) , c ( "i" , "j" ) ) ,
	        z = as.vector ( m ) )

