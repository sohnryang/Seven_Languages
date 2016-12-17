Object fib := method (n,
    first := 0
    second := 1
    next := 0
    for(i, 0, n - 1, 
        if(i <= 1) 
        then(
            next = i,
            next = first + second
            first = second
            second = next
        )
    )
    next
)
