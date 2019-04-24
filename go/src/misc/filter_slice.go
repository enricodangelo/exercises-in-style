package main

import (
	"fmt"
)

func main() {
	var arr [10]int = [10]int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}
	fmt.Printf("arr = %v\n", arr)

	var s2 []int = filter(arr[:], func(x int) bool {
		if x%2 == 0 {
			return true
		} else {
			return false
		}
	})

	fmt.Printf("s2 = %v\n", s2)
}

func filter(s []int, fun func(int) bool) []int {
	var res []int = make([]int, 0)

	for i := 0; i < len(s); i++ {
		if fun(s[i]) {
			res = append(res, s[i])
		}
	}

	return res
}
