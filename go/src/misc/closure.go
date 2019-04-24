package main

import (
	"fmt"
)

func main() {
	var z = func(x int, y int) int { return x + y }(3, 4)
	//    var z int = f(3, 4)
	fmt.Printf("%d\n", z)

	var sum = func() int {
		var mySum = 0
		for i := 0; i < 1e6; i++ {
			mySum += i
		}
		return mySum
	}()

	fmt.Printf("Somma = %d\n", sum)

	fmt.Printf("sum: type = %T, value = %v\n", sum, sum)

	var fv = func() { fmt.Printf("Stica!\n") }

	fmt.Printf("fv: type = %T, value = %v\n", fv, fv)
}
