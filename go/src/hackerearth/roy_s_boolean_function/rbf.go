package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	fmt.Println("Hello World!")
	for i := 2; i <= 100; i++ {
		fmt.Println(strconv.Itoa(i) + ": " + strconv.Itoa(sieve_of_eratosthenes(i)))
	}
}

func sieve_of_eratosthenes(n int) int {
	var a []bool = make([]bool, n, n)
	for i, _ := range a {
		a[i] = true
	}

	for i := 2; i <= int(math.Sqrt(float64(n))); i++ {
		fmt.Println("i = " + strconv.Itoa(i))
		if a[i] {
			for j, k := int(math.Pow(float64(i), float64(2))), 0; j < n; j, k = j+(i*k), k+1 {
				fmt.Println("n = " + strconv.Itoa(n) + "j = " + strconv.Itoa(j))
				a[j] = false
			}
		}
	}
	var z int = 0
	for _, v := range a {
		if v {
			z++
		}
	}

	return z
}
