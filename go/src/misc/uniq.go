package main

import (
	"fmt"
)

func main() {
	var s = "aaabbccddeeefghillmmnnoo"
	var uniqS = uniq(s)
	fmt.Printf("s = %s\n", s)
	fmt.Printf("uniqS = %s\n", uniqS)
}

func uniq(s string) string {
	var r []rune = []rune(s)
	var res []rune = make([]rune, 0)
	//il primo carattere c'e' sempre
	res = append(res, r[0])
	var last rune = r[0]
	for i := 1; i < len(r); i++ {
		if r[i] != last {
			res = append(res, r[i])
		}
		last = r[i]
	}
	return string(res)
}
