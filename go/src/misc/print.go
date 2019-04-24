package main

import (
	"fmt"
)

func main() {
	var i int = 7
	var s string = "Ciao bello"

	fmt.Printf("Printf\ti = %v, s = %v\n", i, s)
	fmt.Println("Println\ti = %v, s = %v", i, s)
	fmt.Print("Print\ti = %v, s = %v\n", i, s)
}
