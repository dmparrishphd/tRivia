csource <- function(.character, local=FALSE, ...) {
    LOCAL <- if (is.environment(local)) { local
    } else if (local) { parent.frame()
    } else FALSE
    #REMINDER: "When writing to a text connection, the
    # connections code always assumes its input is in native
    # encoding" (`help(file)`).
    f <- file(open="w+")
        write(.character, f)
        seek(f, where=0, rw="r")
        source(f, local=LOCAL, ...)
    close(f) }
    
