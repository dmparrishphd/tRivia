rowIds <- function ( m )
        if ( is.null ( rn <- rownames ( m ) ) )
                seq_len ( nrow ( m ) ) else rn
