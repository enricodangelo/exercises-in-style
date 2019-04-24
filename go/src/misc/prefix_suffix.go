package main

import (
	"fmt"
	"strings"
)

func main() {
	var str string = "Stringa"

	fmt.Println(str + " HasPrefix \"Str\"")
	fmt.Println(strings.HasPrefix(str, "Str"))

	fmt.Println(str + " HasPrefix \"hgf\"")
	fmt.Println(strings.HasPrefix(str, "hgf"))

	fmt.Println(str + " HasSuffix \"nga\"")
	fmt.Println(strings.HasSuffix(str, "nga"))

	fmt.Println(str + " HasSuffix \"poi\"")
	fmt.Println(strings.HasSuffix(str, "poi"))

	fmt.Println(str + " Contains \"in\"")
	fmt.Println(strings.Contains(str, "in"))

	fmt.Println(str + " Index \"i\"")
	fmt.Println(strings.Index(str, "i"))

	fmt.Println(str + " Index \"x\"")
	fmt.Println(strings.Index(str, "x"))

	fmt.Println(str + " LastIndex \"g\"")
	fmt.Println(strings.LastIndex(str, "g"))

	fmt.Println(str + " LastIndex \"y\"")
	fmt.Println(strings.LastIndex(str, "y"))
}
