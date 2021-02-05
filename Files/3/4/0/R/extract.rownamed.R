extract.rownamed <- function ( X , row.names )
        X [ rownames ( X ) %in% row.names , , drop = FALSE ]
