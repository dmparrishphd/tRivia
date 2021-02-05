rpaste <- function ( m , sep = "" ) {
    if ( ncol ( m ) < 2 ) return ( as.vector ( unlist ( m ) ) )
    DF <- as.data.frame ( m , stringsAsFactors = FALSE )
    LDF <- length ( DF )
    SEP <- rep_len ( sep , LDF )
    INITIAL <- lapply ( seq_len ( LDF - 1 ) ,
        function ( i ) paste0 ( DF [[ i ]] , SEP [[ i ]] ) )
    TERMINAL <- DF [[ LDF ]]
    paste0 ( do.call ( paste0 , INITIAL ) , TERMINAL ) }
