function ( path = "" , parent.name = "package:stats" ) {
    Envir <- new.env ( parent = as.environment ( parent.name ) )
    FILENAMES <- list.files ( path , pattern = "^[^\\.].*[.]R$" , recursive = FALSE )
    for ( Filename in FILENAMES ) source ( local = Envir ,
        paste0 ( path , "/", Filename ) )
    attach ( name = "csvcsvEnv" , what = Envir ) }
