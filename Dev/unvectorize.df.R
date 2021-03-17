unvectorize <- function ( .df , .... ) {
	DF <- data.frame ( NA ) [ , -1 ] # ONE ROW, NO COLUMNS
    n <- nrow ( .df )
	for ( i in seq_len ( n ) ) DF <- data.frame ( Y , .df [ i , ] , ... )
	names ( DF ) <- paste ( names ( .df ) , rep ( seq_len ( ncol ( .df ) ) , each = n ) , sep = "" )
	DF }
