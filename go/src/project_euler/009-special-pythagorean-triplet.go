package main

import (
    "fmt"
)

func main() {
    for a := 0; a < 1000; a++ {
        for b := 0; b < 1000; b++ {
            for c := 0; c < 1000; c++ {
                if (a < b) && (b < c) {
                    if a + b + c == 1000 {
                        var a2 = a*a
                        var b2 = b*b
                        var c2 = c*c
                        if (a2 + b2) - c2 == 0 {
                            fmt.Println(a * b * c)
                        }
                    }
                }
            }
        }
    }
}
