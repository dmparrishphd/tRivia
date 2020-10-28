usrOrigin.as.inDev
==================

_User origin in device coordinates_

Usage
-----

    usrOrigin.as.inDev()
    
Value
-----

A `double vector` containing the location of the user origin in "page coordinates",
i.e., inches to the right and above the bottom-left corner of the device.

Warning
-------

Intended for use with devices containing a single plot.
Expect strange results if the device contains multiple plots.
