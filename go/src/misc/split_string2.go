package main

import (
    "fmt"
)

func main() {
    var str string = "un'altra stringa a caso"
    fmt.Printf("str[len(str)/2:] + str[:len(str)/2] = %s\n",  str[len(str)/2:] + str[:len(str)/2])
}
