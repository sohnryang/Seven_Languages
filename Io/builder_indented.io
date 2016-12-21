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

Builder ul(
    li("Io"),
    li("Lua"),
    li("JavaScript"))
