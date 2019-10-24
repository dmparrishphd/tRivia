readRaw <- function(con, n=1L)
        readBin(con, what="raw", n=n)

writeRaw <- function (object, con)
        writeBin(as.raw(object), con)
