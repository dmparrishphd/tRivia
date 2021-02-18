CLASSIFICATION.CHART.PROTO <- list (
	init = function ( . , X , FUNS ) {
		.$.DATA <- lapply ( FUNS , function ( fun ) which ( fun ( X ) ) )
	    . } ,
	as.vector = function ( . )
		unlist ( lapply (
			seq_along ( .$.DATA ) ,
			function ( i ) rep.int ( i , length ( .$.DATA [[ i ]] ) ) ) ) ,
	as.data.frame = function ( . )
        data.frame (
			i = unlist ( .$.DATA ) ,
			class = vectorize.classifications ( .$.DATA ) ) ,
	.NULL = NULL )
