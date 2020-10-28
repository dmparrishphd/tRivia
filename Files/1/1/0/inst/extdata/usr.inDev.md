usr.inDev
=========

_Convert device coordinates (inches) to user coordinates._

Usage
-----

    usr.inDev(inches)
    
| Argument | Description |
| -------: | :---------- |
|   inches | A 2-element `numeric vector` of device coordinates. |

Value
-----

A `numeric vector` with the user coordinates corresponding to the argument.

Details
-------

Device coordinates are inches from the bottom-left corner of the device (or page).

Warning
-------

Intended for use with devices containing a single plot.
Expect strange results if the device contains multiple plots.
