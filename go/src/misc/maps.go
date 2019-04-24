package main

import (
	"fmt"
)

func main() {
	var mappa map[int]int = make(map[int]int, 10)
	for i := 0; i < 10; i++ {
		mappa[i] = i * 7
	}
	mappa[13] = 13 * 7

	for i := 0; i < 20; i++ {
		if value, ok := mappa[i]; ok {
			fmt.Printf("%d presente: %d\n", i, value)
		} else {
			fmt.Printf("%d non presente.\n", i)
		}
	}

	delete(mappa, 6)
	delete(mappa, 19)

	for i := 0; i < 20; i++ {
		if value, ok := mappa[i]; ok {
			fmt.Printf("%d presente: %d\n", i, value)
		} else {
			fmt.Printf("%d non presente.\n", i)
		}
	}
}
