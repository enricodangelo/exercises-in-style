package main

import (
    "fmt"
)

func main() {
    var s string = "prova di una stringa del cavolo"
    var i int = 9
    var head, tail string = split(s, i)
    fmt.Printf("head = \"%s\"\ntail = \"%s\"\n", head, tail)
}

func split(s string, i int) (head, tail string) {
    return s[:i], s[i:]
}
