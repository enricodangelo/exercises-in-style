package main

import (
	"fmt"
)

func main() {
	var str string = "Go is a beautiful language!"
	for idx, ch := range str {
		fmt.Printf("Carattere inposizione %d = %c\n", idx, ch)
		ch = 'a'
	}

	fmt.Printf("str = %s\n", str)

	for idx, _ := range str {
		ch2 := str[idx]
		fmt.Printf("Carattere inposizione %d = %c\n", idx, ch2)
	}

	fmt.Printf("str = %s\n", str)

	var strChinese string = "日本語"
	for idx, ch := range strChinese {
		fmt.Printf("Il carattere %c inizia in posizione %d della stringa %s\n", ch, idx, strChinese)
	}
}
