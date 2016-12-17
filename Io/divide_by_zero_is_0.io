//Thanks to this stackoverflow question:
//http://stackoverflow.com/questions/4262196/how-do-you-replace-existing-operators-without-invoking-them-in-io
origDiv := Number getSlot("/")

10 origDiv(5) println   # => 2
10 origDiv(0) println   # => inf

Number / := method (i, 
    if (i != 0, self origDiv(i), 0)
)
