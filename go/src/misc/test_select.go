package main

import (
	"fmt"
	"time"
)

func main() {
	var c1 chan string = make(chan string)
	var c2 chan string = make(chan string, 3)

	go func() {
		for {
			c1 <- "uno"
			time.Sleep(time.Second * 3)
		}
	}()

	go func() {
		for {
			c2 <- "due"
			time.Sleep(time.Second * 3)
		}
	}()

	go func() {
		for {
			select {
			case msg1 := <-c1:
				fmt.Println(msg1)
			case msg2 := <-c2:
				fmt.Println(msg2)
			case <-time.After(time.Second * 2):
				fmt.Println("TIMEOUT!")
			}
		}
	}()

	var input string
	fmt.Scanln(&input)
}
