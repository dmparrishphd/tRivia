uncross.m <- function ( m )
        cbind (
            rep ( rowIds ( m ) , times = ncol ( m ) ) ,
            rep ( colIds ( m ) ,  each = nrow ( m ) ) ,
            as.vector ( `dimnames<-` ( m , NULL ) ) )
