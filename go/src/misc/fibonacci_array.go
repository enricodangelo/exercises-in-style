package main

import (
	"fmt"
)

const N int = 50

func main() {
	var fib_arr [N]int

	for i := 0; i < len(fib_arr); i++ {
		if i == 0 || i == 1 {
			fib_arr[i] = 1
		} else {
			fib_arr[i] = fib_arr[i-1] + fib_arr[i-2]
		}
	}

	for j := 0; j < len(fib_arr); j++ {
		fmt.Printf("fibonacci(%d) = %d\n", j, fib_arr[j])
	}
}
