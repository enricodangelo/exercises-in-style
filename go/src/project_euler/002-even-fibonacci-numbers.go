package main

import (
    "fmt"
    "math"
)

//var m map[int]int = make(map[int]int)
var fib1 int = 1
var fib2 int = 1

func main() {
    var MAX int = 4 * 1000000
    var result int = 0
    var fib int = 0

    for i := 1; fib < MAX; i++ {
        fib = fibo(i)
        if math.Mod(float64(fib), float64(2)) == 0 {
            result += fib
        }
    }

    fmt.Println(result)
}

func fibo(i int) int {
    var fibI int
    if i == 1 {
        fibI = 1
        return 1
    } else if i == 2 {
        fibI = 1
        return 1
    } else {
        fibI = fib1 + fib2
    }

    fib2 = fib1
    fib1 = fibI

    return fibI
}
