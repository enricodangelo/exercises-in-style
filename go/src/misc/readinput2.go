package main

import (
	"bufio"
	"fmt"
	"os"
)

var inputReader *bufio.Reader
var delim string
var input string
var err error

func main() {
	inputReader = bufio.NewReader(os.Stdin)
	fmt.Print("Please enter the delimiter: ")
	fmt.Scanln(&delim)
	fmt.Print("Please enter something: ")
	input, err = inputReader.ReadString(delim[0]) //si legge anche il delemitatore!

	if err == nil {
		fmt.Printf("The input was: %s\n", input)
	} else {
		fmt.Println("Got error: ", err)
	}
}
