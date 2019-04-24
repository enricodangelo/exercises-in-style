package main

import (
    "fmt"
)

func main() {
    var sumOfSquares int64 = 0
    var squareOfSums int64 = 0

    for i := int64(1); i <= 100; i++ {
        sumOfSquares += i * i
        squareOfSums += i
    }
    squareOfSums *= squareOfSums

    var diff = squareOfSums - sumOfSquares

    fmt.Println(diff)
}
