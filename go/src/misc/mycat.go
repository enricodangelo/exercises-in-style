package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	inputFile, err := os.Open(os.Args[0])
	if err != nil {
		fmt.Printf("%v\n", err)
	}

	inputReader := bufio.NewReader(inputFile)

	for {
		input, err := inputReader.ReadString('\n')
		if err != nil {
			fmt.Printf("Impossibile leggere dal file %s\n", os.Args[0])
			fmt.Printf("%v", err)
		}

		fmt.Printf("%s", input)
	}
}
