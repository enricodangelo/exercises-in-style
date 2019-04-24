package main

import (
    "fmt"
    "time"
)

func main() {
    var now time.Time = time.Now()
    var month time.Month = now.Month()
    fmt.Printf("%v\n", month)

    switch int(month) {
    case 1, 2, 3:
        fmt.Println("Inverno")
    case 4, 5, 6:
        fmt.Println("Primavera")
    case 7, 8, 9:
        fmt.Println("Estate")
    case 10, 11, 12:
        fmt.Println("Autunno")
    }
}
