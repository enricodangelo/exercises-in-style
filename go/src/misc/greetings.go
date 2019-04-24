package greetings

import (
    "time"
    "fmt"
)

func Ciao() {
    fmt.Printf("Ciao\n")
}

func Greet() {
    var now time.Time = time.Now()
    noon := time.Date(now.Year(), now.Month(), now.Day(), 13, 0, 0, 0, now.Location())
    if now.Before(noon) {
        fmt.Printf("Buongiorno!\n")
    } else {
        fmt.Printf("Buonasera!\n")
    }
}
