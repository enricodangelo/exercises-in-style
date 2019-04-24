package main

import (
	"fmt"
)

type CIAO int

func main() {
	var c CIAO = 7
	var i int = 8

	fmt.Printf("c = %v\n", c)
	fmt.Printf("i = %v\n", i)

	//sono 2 tipi diversi!
	//    c = i

	//    fmt.Printf("c = %v\n", c)
	//    fmt.Printf("i = %v\n", i)
}
