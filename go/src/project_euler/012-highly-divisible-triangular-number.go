package main

import (
    "fmt"
)

var last int64 = 0;

func main() {
    var countSoFar int64 = 0
    var tNumberSoFar int64 = 0
    for i := int64(0); ; i++ {
        var tNumber = triangularNumber(i)
        //fmt.Println(tNumber)
        var count int64 = divisors(tNumber)

        tNumberSoFar = tNumber
        if count > countSoFar {
            countSoFar = count
            fmt.Println(countSoFar, ": ", tNumberSoFar)
        }

//        fmt.Println(count)
        if count > 500 {
            fmt.Println(tNumber)
        }
    }
}

func triangularNumber(n int64) int64 {
//    var res int64 = 0
    for i := int64(1); i <= n; i++ {
//        res += i
        last += 1
    }
//    return res
    return last
}

func divisors(n int64) int64 {
    var count int64 = 0
    for i:= int64(1); i <= n; i++ {
        if n % i == 0 {
            count += 1
        }
    }
    return count
}
