package main

import (
	"fmt"
)

func main() {
	var arr1 [6]int
	var slice1 []int = arr1[2:5]

	for i, _ := range arr1 {
		arr1[i] = i
	}

	for i := 0; i < len(slice1); i++ {
		fmt.Printf("slice1[%d] = %d\n", i, slice1[i])
	}

	fmt.Printf("len(arr1) = %d\n", len(arr1))
	fmt.Printf("len(slice1) = %d\n", len(slice1))
	fmt.Printf("cap(slice1) = %d\n", cap(slice1))

	fmt.Printf("Grow the slice1 [2:5] -> [0:4]\n")
	slice1 = slice1[0:4]
	for i, v := range slice1 {
		fmt.Printf("slice1[%d] = %d\n", i, v)
	}

	fmt.Printf("len(slice1) = %d\n", len(slice1))
	fmt.Printf("cap(slice1) = %d\n", cap(slice1))
}
