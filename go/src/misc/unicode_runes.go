package main

import (
	"fmt"
	"unicode/utf8"
)

func main() {
	var ch int = '\u0041'
	var ch2 int = '\u03B2'
	var ch3 int = '\U00101234'
	var ch4 int = '\u265E'
	var ch5 int = '\u262D'

	fmt.Printf("%d - %d - %d - %d - %d\n", ch, ch2, ch3, ch4, ch5) // integer
	fmt.Printf("%c - %c - %c - %c - %c\n", ch, ch2, ch3, ch4, ch5) // character
	fmt.Printf("%X - %X - %X - %X - %X\n", ch, ch2, ch3, ch4, ch5) // UTF-8 bytes
	fmt.Printf("%U - %U - %U - %U - %U\n", ch, ch2, ch3, ch4, ch5) // UTF-8 code point

	var str = "ಠ_ಠ"
	fmt.Printf("%s\n", str)

	fmt.Printf("str = %s\n", str)
	fmt.Printf("str.len() = %d - Numero di bytes\n", len(str))
	fmt.Printf("utf8.RuneCountInString(str) = %d - Numero di caratteri\n", utf8.RuneCountInString(str))
}
