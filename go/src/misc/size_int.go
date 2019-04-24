package main

import (
    "fmt"
    "unsafe"
)

func main() {
    var x int = 7
    fmt.Printf("sizeof int = %d\n", unsafe.Sizeof(x))
}
