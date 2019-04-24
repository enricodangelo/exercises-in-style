package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	var inputReader *bufio.Reader
	var input string
	var err error

	inputReader = bufio.NewReader(os.Stdin)
	input, err = inputReader.ReadString('\n')

	if err == nil {
		fmt.Printf("Ciao %s\n", input)
	} else {
		fmt.Printf("C'e' stato un errore\n")
	}
}
