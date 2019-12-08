extract <- function(tarfile, files, exdir)
        untar(tarfile=tarfile, files=files, exdir=exdir, compressed=F)

tartf <- function(tarfile) untar(tarfile=tarfile, list=T)

install <- function(tarfile, files, exdir, lib) {
    dir.create(exdir)
    extract(tarfile, files, exdir)
    install.packages(
        pkgs=paste0(exdir, files),
        lib=lib,
        repos=NULL,
        method="internal",
        type="source",
        verbose=T)
    unlink(exdir, recursive=T)
}
