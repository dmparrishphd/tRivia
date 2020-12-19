ffindlf <- function(filename, where=0, n=1024L) {
	con <- file(filename, open="rb")
	seek(con, where=where)
	pos <- seek(con, where=NA)
	if (pos != where) stop(paste0(
		"could not `seek` to `where` (", where, ")." ) )
	Station <- where
	List <- list()
	LF <- as.raw(10)
	repeat {
		x <- readBin(con, what="raw", n=n)
		if (!length(x)) break
		ilf <- Station + which(x == LF) - 1L
		if (length(ilf)) List <- list(rev(ilf), List)
		Station[1] <- Station + n }
	close(con)
	1 + rev(unlist(List)) }
