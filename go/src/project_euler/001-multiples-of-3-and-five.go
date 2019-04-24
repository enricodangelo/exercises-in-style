package main

import (
    "fmt"
    "math"
)

func main() {
    var result = 0
    for i := 3; i < 1000; i++ {
        if math.Mod(float64(i), float64(3)) == 0 {
            result += i
        } else if math.Mod(float64(i), float64(5)) == 0 {
            result += i
        }
    }
    fmt.Println(result)
}
