package main

import (
	"fmt"
)

func mul10(i int) int {
	return i * 10
}

func main() {
	var a [10]int = [10]int{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}

	var res []int = map_f(mul10, a[:])

	fmt.Printf("res = %v\n", res)
}

func map_f(f func(int) int, l []int) []int {
	var res []int = make([]int, len(l))
	copy(res, l)

	for i := 0; i < len(res); i++ {
		res[i] = f(res[i])
	}

	return res
}
