package main

import (
    "fmt"
)

//struct
type number struct {
    n float64
}

//type alias per la struttura number definita sopra
type nr number

func main() {
    a := number{7.5}
    b := nr{8.0}
    fmt.Printf("a = %v, b = %v\n", a, b)

    // var i float32 = b    // compile-error: cannot use b (type nr) as type float32 in assignment
    // var i = float32(b)   // compile-error: cannot convert b (type nr) to type float32
    // var c number = b     // compile-error: cannot use b (type nr) as type number in assignment
    // needs a conversion:
    var c = number(b)
    fmt.Printf("a = %v, b = %v, c = %v\n", a, b, c)
}
