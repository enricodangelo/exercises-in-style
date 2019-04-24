package main

import (
    "fmt"
)

type inner struct {
    x int
    y int
}

type outer struct {
    x int
    string
    int
    inner
}

func main() {
    cosa := outer{7, "Ciao sono la stringa anonima", 8, inner{9, 10}}

    fmt.Printf("cosa = %v\n", cosa)
}
