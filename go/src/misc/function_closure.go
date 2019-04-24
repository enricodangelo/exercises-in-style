package main

import "fmt"

func main() {
	var f = Adder()
	fmt.Printf("f: %T\n", f)
	fmt.Printf("%d\n", f(1))
	fmt.Printf("%d\n", f(20))
	fmt.Printf("%d\n", f(300))
}

func Adder() func(int) int {
	var x int
	return func(delta int) int {
		x += delta
		return x
	}
}
