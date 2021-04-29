read.csv.array
==============

Read a group of partially aligned CSV files.

Usage
-----

    read.csv.array (
        X ,
        n = 1 ,
        sep = "" ,
        norownames = character () ,
        nonames = character () ,
        row.names = NULL ,
        .names = NULL ,
   	    nocell = list ( character () , character () ) ,
        readRownames = function ( file ) read.csv.rownames.left (
            file , ncol = n , sep = sep ) ,
        readHeaderNoRownames = function ( file ) read.csv.header (
            file ) [ -n:-1 ] ,
        readTable = function ( file ) `rownames<-` (
            read.csv.as.is ( file ) , readRownames ( file ) )
    )
    
| Argument | Description |
| -------: | :---------- |
|                    `X` | See Details. |
|                    `n` | The number of _left_ columns from which to form row names  |
|                  `sep` | The separator to apply in the formation of row names |
|           `norownames` | A `character` vector of row names |
|              `nonames` | A `character` vector of (column) names |
|            `row.names` | A `character` vector of row names |
|               `.names` | A `character` vector of (column) names |
|               `nocell` | A parallel list (e.g., an `data.frame`) of row-name--name pairs |
|         `readRownames` | See Details. |
| `readHeaderNoRownames` | See Details. |
|            `readTable` | See Details. |

Value
-----

A `list` containing `data.frames` representing the data read.

Details
-------

### X

The original design and defaults for
`readRownames`, `readHeaderNoRownames`, and `readTable`
assume that `X` is a` character` vector of csv file names.

### norownames

The `norownames` argument specifies rows which will be excluded from the return.

### nonames

The `nonames` argument specifies column which will be excluded from the return.

### row.names

If `row.names` is not `NULL`, rows _not_ specified by `row.names` will be _excluded_ from the return.

### .names

If `.names` is not `NULL`, columns _not_ specified by `.names` will be _excluded_ from the return.

### nocell

It is an error to include among the observations (rows of a`data.frame`)
of `nocell` any observation which does not occur among the data
specified by the first seven arguments (i.e., `X`, `n`, `sep`,
`norownames`, `nonames`, `row.names`, and `.names`).
A future version of `csvcsv` might be less strict.

### readRownames, readHeaderNoRownames, readTable

`readRownames`, `readHeaderNoRownames`, and `readTable` are
functions of one argument which return the row names, header
(except row-name columns) and data of the tables specified by
the elements of `X`.
