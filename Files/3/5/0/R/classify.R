classify <- function ( x , breaks = 0 , compar = `<` )
        vapply ( x , FUN.VALUE = 1L , USE.NAMES = FALSE ,
            FUN = function ( y ) 1L + sum ( compar ( breaks , y ) ) )
