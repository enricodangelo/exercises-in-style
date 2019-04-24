package main

import (
    "fmt"
)

func main() {
    var max int = 0
    var number int = 0
    for i := 1; i < 1000000; i++ {
        var c = countTerms(i, 0)
        if c > max {
            max = c
            number = i
        }
    }
    fmt.Println(number)
}

func countTerms(n int, c int) int {
    if n == 1 {
        return c
    } else {
        if n % 2 == 0 {
            return countTerms(n/2, c + 1)
        } else {
            return countTerms((3 * n) + 1, c + 1)
        }
    }
}
