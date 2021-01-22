mlsearch <- function ( x , table , compar = `==` ,
    extract = `[[` , n = length ( table ) )
            vapply ( FUN.VALUE = T , USE.NAMES = F ,
                X = seq_len ( n ) , FUN = function ( i )
                    compar ( extract ( table , i ) , x ) )
