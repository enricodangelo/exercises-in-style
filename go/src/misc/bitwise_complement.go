package main

import (
	"fmt"
)

func main() {
	for i := 0; i < 11; i++ {
		//        var bitP = i
		fmt.Printf("%b\n", ^i)
	}
}
