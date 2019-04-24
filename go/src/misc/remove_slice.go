package main

import (
	"fmt"
)

func main() {
	var s [10]int = [10]int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	var s2 []int = remove(s[:], 3, 8)
	fmt.Printf("s2 = %v\n", s2)
}

func remove(s []int, start int, end int) []int {
	var res []int = make([]int, 0)

	for i := 0; i < len(s); i++ {
		if !(i >= start && i < end) {
			res = append(res, s[i])
		}
	}

	return res
}
