List sumOf2D := method(
    tempSum := nil
    flattenedList := self flatten()
    flattenedList foreach(val,
        if(val type() == "Number",
            tempSum= (
                val + if(tempSum == nil, 0, tempSum)
            )
        )
    )
    tempSum
)

ls := list(
    list(1, 2, 3),
    list(4, 5, 6),
    list(7, 8, 9)
)

ls sumOf2D println
