OperatorTable addAssignOperator(":", "atPutAttribute")
curlyBrackets := method(
    r := Map clone
    call message arguments foreach(arg,
        r doMessage
    )
    r
)
Map atPutAttribute := method(
    self atPut(
        call evalArgAt(0) asMutable removePrefix("\"") removeSuffix("\""),
        call evalArgAt(1)
    )
)

Builder := Object clone
Builder depth := 0
Builder forward := method(
    indentation := ("    " repeated(self depth))
    writeln(indentation, "<", call message name, ">")
    depth = depth + 1
    call message arguments foreach(arg,
        content := self doMessage(arg)
        if(content type == "Sequence", writeln(indentation, "    ", content))
    )
    writeln(indentation, "</", call message name, ">")
    depth = depth - 1
)

Builder book({"author" : "Tate"})
