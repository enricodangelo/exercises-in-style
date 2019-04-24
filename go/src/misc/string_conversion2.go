package main

import (
    "fmt"
    "strconv"
)

func main() {
    var orig string = "a"
    var an int
    var newS string

    fmt.Printf("The size of ints is: %d\n", strconv.IntSize)
    
    var err error
    an, err = strconv.Atoi(orig)
    fmt.Printf("The integer is: %d\n", an)
    fmt.Printf("The error is: %s\n", err)

    an = an + 5
    newS = strconv.Itoa(an)
    fmt.Printf("The new string is: %s\n", newS)
}
