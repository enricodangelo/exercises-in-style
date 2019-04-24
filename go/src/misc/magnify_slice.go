package main

import (
	"fmt"
)

func main() {
	var slice []int = make([]int, 7)
	var factor = 32
	var slice2 []int = magnify(slice, factor)

	fmt.Printf("len(slice) = %d, factor = %d, len(slice2) = %d\n", len(slice), factor, len(slice2))
}

func magnify(slice []int, factor int) []int {
	var n int = len(slice)
	var m int = n * factor
	//mettere ... dopo una slice la espande con la lista dei sui elementi
	var res []int = append(slice, make([]int, m-n)...)
	return res
}
