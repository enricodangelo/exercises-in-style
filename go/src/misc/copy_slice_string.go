package main

import (
	"fmt"
)

func main() {
	var s string = "prova"
	var dst = make([]byte, 10)

	copy(dst, s)

	fmt.Printf("%s\n", dst)

	var s2 string = "prova"
	var s3 string = "da sovrascrivere"

	// non va, src deve essere una slice. Solo dst puo' essere una string perche' e' in realta' una slice immutabile e viene solo letta
	copy(s3, s2)

	fmt.PRintf("%s\n", s3)
}
