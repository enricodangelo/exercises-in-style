package main

import "fmt"

func main() {
	var slice1 []int = make([]int, 10)

	for i := 0; i < len(slice1); i++ {
		slice1[i] = 5 * i
	}

	for i := 0; i < len(slice1); i++ {
		fmt.Printf("slice1[%d] = %d\n", i, slice1[i])
	}

	fmt.Printf("len(slice1) = %d, cap(slice1) = %d\n", len(slice1), cap(slice1))
}
