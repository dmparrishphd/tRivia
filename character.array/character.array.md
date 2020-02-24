# character.array

## DESCRIPTION

Produce a `character array` by recursively `strsplit`-ing a
`character` string.

## USAGE

`character.array(string, sep=c(" ", "\n"), fixed=TRUE, ...)`

## ARGUMENTS

|   |   |
| :------- | :-- |
| `string` | A `character` string (single-element `character vector`) |
| `sep`    | A `character vector` containing the separators for each dimension of the `character array`. |
| `fixed`  | (passed to `strsplit`) |
| `...`    | (passed to `strsplit`) |

## DETAILS

character.array recursively `strsplit`-s `string` (arg 1) by the
elements of `sep` (arg 2). The `fixed` and `...` are passed to
`strsplit` during each iteration.

If `string` and `sep` are inconsistent, as may occur if
the input is a ragged array, an error is likely. Use filler words
if necessary to create the appropriate shape.

## VALUE

The return is a `character array` having dimensions consistent
with the splits.

## EXAMPLES

    # **** NOTE: ****
    # THE LEADING WHITESPACE IN THE  ARGUMENT BELOW CONSISTS OF TAB
    # CHARACTERS.
    CHARACTER.ARRAY <- trimws(character.array(
    				"AS YOU WISH
    				YES YOU CAN.
    				HOUSE FOR SALE."))

    CHARACTER.ARRAY

    #      [,1]    [,2]   [,3]   
    # [1,] "AS"    "YES"  "HOUSE"
    # [2,] "YOU"   "YOU"  "FOR"  
    # [3,] "WISH." "CAN." "SALE."

    write(CHARACTER.ARRAY, file=stdout(), ncolumns=3)

    # AS YOU WISH
    # YES YOU CAN.
    # HOUSE FOR SALE.
