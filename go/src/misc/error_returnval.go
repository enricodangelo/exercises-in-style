package main

import (
	"fmt"
	"math"
)

func main() {
	var x1, x2 float64 = -5, 7
	var res1, res2 float64
	var err1, err2 string

	res1, err1 = mySqrtNamed(x1)
	res2, err2 = mySqrtUnnamed(x1)

	fmt.Printf("res1 = %f, err1 = %s\n", res1, err1)
	fmt.Printf("res2 = %f, err2 = %s\n", res2, err2)

	res1, err1 = mySqrtNamed(x2)
	res2, err2 = mySqrtUnnamed(x2)

	fmt.Printf("res1 = %f, err1 = %s\n", res1, err1)
	fmt.Printf("res2 = %f, err2 = %s\n", res2, err2)
}

func mySqrtNamed(x float64) (res float64, err string) {
	if x < 0 {
		err = "Input negativo!"
		return
	}

	res = math.Sqrt(x)
	return
}

func mySqrtUnnamed(x float64) (float64, string) {
	if x < 0 {
		var err string = "Input negativo!"
		return 0, err
	}

	var res float64 = math.Sqrt(x)
	return res, ""
}
