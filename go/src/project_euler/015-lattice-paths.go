package main

import (
    "fmt"
)

func main() {
    fmt.Println((19 * fact(19) + 20) * 2)
}

func fact(n int) int {
    if n == 1 {
        return 1
    } else {
        return n * fact(n - 1)
    }
}
