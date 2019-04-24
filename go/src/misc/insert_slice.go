package main

import (
	"fmt"
)

func main() {
	var s [5]int = [5]int{1, 2, 3, 4, 5}
	var s2 [5]int = [5]int{6, 7, 8, 9, 10}
	var s3 []int = insert(s[:], s2[:], 4)
	fmt.Printf("s3 = %v\n", s3)
}

func insert(src []int, piece []int, i int) []int {
	var res []int = make([]int, 0)
	res = append(res, src[0:i]...)
	res = append(res, piece...)
	res = append(res, src[i:len(src)]...)
	return res
}
