package main

import (
    "fmt"
    "strconv"
)

func main() {
    var orig string = "ABC"
    var i int
    var err error
    i, err = strconv.Atoi(orig)
    if err != nil {
        fmt.Printf("orig %s is not an integer - exiting with error: %v\n", orig, err)
        return
    }
    fmt.Printf("The integer is %d\n", i)
}
