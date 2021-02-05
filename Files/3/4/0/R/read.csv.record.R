read.csv.record <- function ( con , ncol = 1 , fileEncoding = "" , skipNul = TRUE)
        unlist ( scan(
            file = con,
            what = rep ( list( character () ) , ncol ) ,
            sep = "," ,
            quote = '"' ,
            nlines = 1 ,
            na.strings = character () ,
            flush = TRUE ,
            quiet = TRUE ,
            blank.lines.skip = FALSE ,
            fileEncoding = fileEncoding ,
            skipNul = skipNul ) )
