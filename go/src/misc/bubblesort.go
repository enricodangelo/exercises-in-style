package main

import (
	"fmt"
)

func main() {
	var a [10]int = [10]int{6, 9, 10, 1, 2, 3, 5, 7, 4, 8}
	fmt.Printf("a = %v\n", a)
	var sorted []int = bubblesort(a[:])
	fmt.Printf("sorted = %v\n", sorted)
}

func bubblesort(s []int) []int {
	var swapped bool = true
	for swapped {
		swapped = false
		for i := 1; i < len(s); i++ {
			if s[i-1] > s[i] {
				s[i-1], s[i] = s[i], s[i-1]
				swapped = true
			}
		}
	}
	return s
}
