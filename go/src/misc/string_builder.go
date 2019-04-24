package main

import (
    "fmt"
    "bytes"
)

func main() {
    var buffer bytes.Buffer

    buffer.WriteString("prima stringa, ")
    buffer.WriteString("seconda stringa con a capo\n")
    buffer.WriteString("terza stringa")
    buffer.WriteString("[quarta]")
    buffer.WriteString("igferbhvbghurouhfohrufhbghg")

    var s string = buffer.String()

    fmt.Printf("%s\n", s)
}
