package main

import (
	"fmt"
	"os"
)

func main() {
	fmt.Println("Executing ", os.Args[0])
	if len(os.Args) == 1 {
		os.Exit(-1)
	}

	var fileName string = os.Args[1]

	file, err := os.OpenFile(fileName, os.O_CREATE, 0644)
	if err != nil {
		panic(err)
	}
	defer file.Close()

	var col1, col2, col3 []string
	for {
		var v1, v2, v3 string
		_, err := fmt.Fscanln(file, &v1, &v2, &v3)

		if err != nil {
			break
		}

		col1 = append(col1, v1)
		col2 = append(col2, v2)
		col3 = append(col3, v3)
	}

	fmt.Println(col1)
	fmt.Println(col2)
	fmt.Println(col3)
}
