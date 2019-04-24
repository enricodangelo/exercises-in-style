package main

import (
    "fmt"
    "strings"
)

func main() {
    var str = "ciciciao"
    var target1 = "ci"
    var target2 = "cici"

    fmt.Printf("Occorrenze di \"%s\" in \"%s\" = %d\n", target1, str, strings.Count(str, target1))
    fmt.Printf("Occorrenze di \"%s\" in \"%s\" = %d\n", target2, str, strings.Count(str, target2))

    var n int = 10
    var newStr = strings.Repeat(str, n);
    fmt.Printf("\"%s\" ripetuta %d volte = %s\n", str, n, newStr);
}
