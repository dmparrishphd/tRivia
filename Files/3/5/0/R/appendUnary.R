appendUnary <- function ( X , i , FUN , name = NULL , ... ,
        stringsAsFactors = FALSE ) {
    cbind ( X , stringsAsFactors = stringsAsFactors ,
        ( function ( Y ) `names<-` ( Y , name ) ) ( list (
            FUN ( X [[ i ]] , ... ) ) ) ) }
