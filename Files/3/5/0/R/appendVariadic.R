appendVariadic <- function ( X , i , FUN , name = NULL , ... ,
    stringsAsFactors = FALSE )
            cbind ( X , stringsAsFactors = stringsAsFactors ,
                ( function ( Y ) `names<-` ( Y , name ) ) ( list (
                    do.call ( FUN , c (
                        `names<-` ( X [ i ] , NULL ) ,
                        list ( ... ) ) ) ) ) )
