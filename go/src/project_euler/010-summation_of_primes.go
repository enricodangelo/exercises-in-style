package main

import (
    "fmt"
)

func main() {
    var sum int64 = 2

    for n := int64(3); n < 2000000; n++ {
        var divided bool = false
        for i := int64(2); i < n; i++ {
//            fmt.Println(n, " % ", i, " = ", n % i )
            if n % i == 0 {
                divided = true
                break
            }
        }

        if !divided {
            sum += n
//            fmt.Println(n)
        }
        //if (n % 10000 == 0) {
        //    fmt.Println(n)
        //}
    }

    fmt.Println(sum)
}
