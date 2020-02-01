# nestoR

Create deeply nested lists

 - when you have no idea how long they are going to get,
 - when you have no idea when you might append an(other) element, and/or
 - when you really need to use a loop.
 
## Methods Provided

`[`, `[[`, `append`, `as.list`, `head`, `length`, `tail`

The `append`, `head`, `length`, and `tail` methods should be O(1).

The `[`, and `as.list` methods are probably O(n), where n is number of items.

The `[` and `[[` methods are probably O(n - k), whre n is number of items and k is/are the index/indices of the item(s) selected.

## Real Objects

There are **no classes** here, just objects.

If I coded this right, the objects returned by `nest` (regular `list`s) should be insulated from changes to generic methods, etc. That does not stop anyone from assigning a class to the return.
 
## See also

[phonetagger's post](https://stackoverflow.com/questions/2436688/append-an-object-to-a-list-in-r-in-amortized-constant-time-o1) in response to "Append an object to a list in R in amortized constant time, O(1)?"
