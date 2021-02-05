sans.colnamed <- function ( X , col.names )
        X [ , ! ( colnames ( X ) %in% col.names ) , drop = FALSE ]
