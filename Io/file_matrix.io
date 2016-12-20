matrix := list(
    list(1, 2, 3, 4, 5),
    list(6, 7, 8, 9, 10),
    list(11, 12, 13, 14, 15),
    list(16, 17, 18, 19, 20),
    list(21, 22, 23, 24, 25)
)

f := File open("matrix.txt")
f write(matrix serialized)
f close

matrixFromFile := doFile("matrix.txt")

("Original matrix size: " .. matrix size .. "x" .. matrix at(0) size) println
("Matrix from file size: " .. matrixFromFile size .. "x" .. matrixFromFile at(0) size) println
