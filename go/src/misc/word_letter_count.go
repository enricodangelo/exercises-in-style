package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	var cCount int = 0
	var wCount int = 0
	var lCount int = 0
	inputReader := bufio.NewReader(os.Stdin)
	for {
		input, err := inputReader.ReadString('\n')

		if err != nil {
			fmt.Printf("Errore in input: %v\n", err)
		}

		switch input {
		case "Q\n":
			return
		case "S\n":
			fmt.Printf("characters: %d, words: %d, lines: %d\n", cCount, wCount, lCount)
		default:
			lCount++
			wCount += len(strings.Fields(input))
			cCount += len(input) - 1
		}
	}
}
