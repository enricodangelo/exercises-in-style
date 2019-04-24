package main

import (
	"fmt"
)

func main() {
	var g string
	for i := 0; i < 25; i++ {
		g += "G"
		fmt.Printf("%s\n", g)
	}
}
