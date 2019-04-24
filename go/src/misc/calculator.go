package main

import (
	"MyStack"
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var stack *MyStack.Stack = MyStack.NewStack()
	stack.InitStack(10)
	inputReader := bufio.NewReader(os.Stdin)

	compute(stack, inputReader)
	return
}

func compute(s *MyStack.Stack, r *bufio.Reader) {
	var x, y, z int
	for {
		input, err := r.ReadString('\n')
		if err != nil {
			fmt.Println("Errore in lettura input.\n")
			return
		}
		switch input {
		case "+\n":
			x, err = s.Pop()
			y, err = s.Pop()
			z = y + x
			s.Push(x)
			fmt.Printf("%d + %d = %d\n", y, x, z)
		case "-\n":
			x, err = s.Pop()
			y, err = s.Pop()
			z = y - x
			s.Push(x)
			fmt.Printf("%d - %d = %d\n", y, x, z)
		case "*\n":
			x, err = s.Pop()
			y, err = s.Pop()
			z = y * x
			s.Push(x)
			fmt.Printf("%d * %d = %d\n", y, x, z)
		case "/\n":
			x, err = s.Pop()
			y, err = s.Pop()
			z = y / x
			s.Push(x)
			fmt.Printf("%d / %d = %d\n", y, x, z)
		case "q\n":
			return
		default:
			i, err := strconv.Atoi(input[0 : len(input)-1])
			if err != nil {
				fmt.Printf("Comando non conosciuto\n")
			} else {
				s.Push(i)
			}
		}
	}
}
