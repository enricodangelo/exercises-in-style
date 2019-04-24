package main

import (
    "fmt"
)

func main() {
    var res int = largestFactor(600851475143)
    fmt.Println(res)
}

func largestFactor(n int) int {
    var result int = 0

    for i := 2; i * i <= n; i++ {
        if n % i == 0 {
            result = i
            for n % i == 0 {
                n /= i
            }
        }
    }

    if n != 1 {
       return n
    }

    return result
}
