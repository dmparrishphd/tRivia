function ( path = "" , parent.name = "package:stats" , name = "valEnv") {
    Envir <- new.env ( parent = as.environment ( parent.name ) )
    DIR <- paste0 ( path , "/R" )
    FILENAMES <- list.files ( DIR , pattern = "^[^_].*[.]R$" , recursive = FALSE )
    for ( Filename in FILENAMES ) source (
        local = Envir , paste0 ( DIR , "/", Filename ) )
    attach ( name = name , what = Envir ) }
