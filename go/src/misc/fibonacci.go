package main

import (
	"fmt"
)

func main() {
	result := 0
	n := 10

	for i := 0; i <= n; i++ {
		result = fibonacci(i)
		fmt.Printf("fibonacci(%d) = %d\n", i, result)
	}
}

func fibonacci(i int) (fib int) {
	if i == 0 {
		fib = 0
	} else if i == 1 {
		fib = 1
	} else {
		fib = fibonacci(i-1) + fibonacci(i-2)
	}
	return
}
