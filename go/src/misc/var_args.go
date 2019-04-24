package main

import (
	"fmt"
)

func main() {
	x := Min(1, 3, 7, 4, 3, 6, 9, 0)
	fmt.Printf("Min in parameters is: %d\n", x)
	arr := []int{7, 4, 9, 3, 8, 6, 5}
	y := Min(arr...)
	fmt.Printf("Min in arr is: %d\n", y)
}

func Min(a ...int) int {
	if len(a) == 0 {
		return 0
	}

	min := a[0]
	for _, v := range a {
		if v < min {
			min = v
		}
	}
	return min
}
