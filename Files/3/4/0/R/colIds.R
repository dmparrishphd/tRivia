colIds <- function ( m )
        if ( is.null ( col.names <- colnames ( m ) ) )
                seq_len ( ncol ( m ) ) else col.names
