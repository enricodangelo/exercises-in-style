package main

import (
	"fmt"
)

func main() {
	var f = fibonacci()
	for i := 0; i <= 10; i++ {
		fmt.Printf("fibonacci(%d) = %d\n", i, f(i))
	}
}

func fibonacci() func(int) int {
	var x_1 int = 0
	var x_2 int = 0
	return func(x int) int {
		if x >= 3 {
			x_1 += 1
			x_2 += 1
		}
		fmt.Printf("x = %d, x_1 = %d, x_2 = %d\n", x, x_1, x_2)

		if x == 1 {
			return 1
		} else if x == 2 {
			return 1
		} else {
			return x_1 + x_2
		}
	}
}
