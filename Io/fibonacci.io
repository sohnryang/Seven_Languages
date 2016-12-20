fib := method(n,
    if(n == 1 or n == 2, 1)
    first := 1
    second := 1
    next := 2
    for(i, 3, n,
        next = first + second
        first = second
        second = next
    )
    next
)
