mlsearch <- function ( x , table , compar = `==` ,
    extract = `[[` , n = length ( table ) , USE.NAMES = F )
            vapply ( FUN.VALUE = T , USE.NAMES = USE.NAMES ,
                X = seq_len ( n ) , FUN = function ( i )
                    compar ( extract ( table , i ) , x ) )
                    
