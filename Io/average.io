List myAverage := method(
    if(self.size == 0, return nil)
    tempSum := 0
    self foreach(val,
        if(val.type != "Number", Exception raise("NotNumber", "Encountered a value that is not a number"))
        tempSum = tempSum + val
    )
    tempSum / self.size
)
