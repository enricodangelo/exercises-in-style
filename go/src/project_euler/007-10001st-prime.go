package main

import (
    "fmt"
//    "math"
)

func main() {
    var primesArray []int64 = make([]int64 ,1)

    for n := int64(2); len(primesArray) != 10001; n++ {
        var divided bool = true
//        for i := int64(2); i < int64(math.Sqrt(float64(n))); i++ {
        for i := int64(2); i < n; i++ {

            if n % i == 0 {
                divided = true
                break
            } else {
                divided = false
            }
        }
        if !divided {
            primesArray = append(primesArray, n)
        }
    }

    fmt.Println(primesArray[10000])
}
