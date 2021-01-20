.lsearch <- function(x, table, compar=`==`, extract=`[[`)
        for (i in seq_along(table))
                if (compar(x, extract(table, i)))
                        return (i)

lsearch <- function(...)
        if (is.null(i <- .lsearch(...))) 0L else i
        
