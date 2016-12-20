MultiList := List clone

MultiList dim := method(x, y,
    if(self proto type == "List", MultiList clone dim(x, y))
    self setSize(x)
    for(i, 0, x - 1, 1,
        self atPut(i, list() setSize(y))
    )
    self
)

MultiList get := method(x, y,
    self at(x) at(y)
)

MultiList set := method(x, y, value,
    self at(x) atPut(y, value)
)
