tarxf <- function(tarfile, files, exdir)
        untar(
            tarfile=tarfile,
            files=files,
            exdir=exdir,
            compressed=F)

tartf <- function(tarfile)
        untar(
            tarfile=tarfile,
            list=T)

install <- function(tarfile, files, exdir.parent, exdir, lib) {
    if (!dir.exists(exdir.parent)) {
        warning("apace::install: exdir.parent does not exist: install aborted.")
        return () }

    EXDIR <- paste0(exdir.parent, exdir)

    if (dir.exists(EXDIR)) {
        warning("apace::install: exdir already exists: install aborted.")
        return () }

    dir.create(EXDIR)

    tarxf(tarfile, files, EXDIR)

    install.packages(
        pkgs=paste0(EXDIR, files),
        lib=lib,
        repos=NULL,
        method="internal",
        type="source",
        verbose=T)

    unlink(
        # REMOVE TERMINAL PATH SEPARATOR
        substr(EXDIR, 1, nchar(EXDIR) - 1),
        recursive=T)
}
