package main

import (
    "fmt"
)

func main() {
    for i := int64(20); ; i++ {
        var divisibile = true
        for j := int64(2); j <= 20; j++ {
            if i % j == 0 {
                divisibile = divisibile && true
            } else {
                divisibile = false
                break
            }
        }
        if divisibile {
            fmt.Println(i)
            return
        }
    }
}
