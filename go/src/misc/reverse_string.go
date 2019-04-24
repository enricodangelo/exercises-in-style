package main

import (
	"fmt"
)

func main() {
	var s1 string = "How can we reverse a simple string in Go? A Perl-like 'reverse' function does not seem to exist there."
	var r1 = reverse(s1)
	var s2 string = "Klüft skräms inför på fédéral électoral große"
	var r2 = reverse(s2)

	fmt.Printf("s1 = %s\n", s1)
	fmt.Printf("r1 = %s\n", r1)
	fmt.Printf("s2 = %s\n", s2)
	fmt.Printf("r2 = %s\n", r2)
}

func reverse(s string) string {
	var r []rune = []rune(s)
	for i, j := 0, len(r)-1; i < j; i, j = i+1, j-1 {
		r[i], r[j] = r[j], r[i]
	}
	return string(r)
}
