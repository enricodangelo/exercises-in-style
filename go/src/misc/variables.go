package main

import (
	"fmt"
)

func main() {
	var i int = 5

	fmt.Printf("i = %d\n", i)
	fmt.Printf("i's address = %d \n", &i)
	fmt.Printf("i's address (hex) = %x \n", &i)

	i += 7

	fmt.Printf("i = %d\n", i)
	fmt.Printf("i's address = %d \n", &i)
	fmt.Printf("i's address (hex) = %x \n", &i)
}
