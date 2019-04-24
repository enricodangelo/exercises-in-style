package main

import "fmt"

func main() {
	var x int = 5
	var y int = 7

	var sum1, prod1, diff1 int = sumProdDiffNamed(x, y)
	// go runtime inferisce i tipi di sum2, prod2 e diff2
	var sum2, prod2, diff2 = sumProdDiffUnnamed(x, y)

	fmt.Printf("sum1 = %d, prod1 = %d, diff1 = %d\n", sum1, prod1, diff1)
	fmt.Printf("sum2 = %d, prod2 = %d, diff2 = %d\n", sum2, prod2, diff2)
}

func sumProdDiffNamed(x int, y int) (sum int, prod int, diff int) {
	sum = x + y
	prod = x * y
	diff = x - y
	return
}

func sumProdDiffUnnamed(x int, y int) (int, int, int) {
	var sum int = x + y
	var prod int = x * y
	var diff int = x - y
	return sum, prod, diff
}
