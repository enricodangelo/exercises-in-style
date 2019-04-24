package main

import (
	"bufio"
	"fmt"
	"os"
)

func main() {
	inputReader := bufio.NewReader(os.Stdin)
	fmt.Println("Please enter your name:")
	input, err := inputReader.ReadString('\n')

	if err != nil {
		fmt.Println("Error: ", err)
		return
	}

	fmt.Printf("1) Your name is %s\n", input)

	switch input {
	case "Enrico\n":
		fmt.Println("2) Welcome ENrico!")
	case "Mario\n":
		fmt.Println("2) Welcome Mario!")
	default:
		fmt.Println("2) You are not welcome here! Goodbye!")
	}

	switch input {
	case "Enrico\n":
		fallthrough
	case "Mario\n":
		fmt.Printf("3) Welcome %s!\n", input)
	default:
		fmt.Println("3) You are not welcome here! Goodbye!")
	}

	switch input {
	case "Enrico\n", "Mario\n":
		fmt.Printf("4) Welcome %s!\n", input)
	default:
		fmt.Println("4) You are not welcome here! Goodbye!")
	}
}
