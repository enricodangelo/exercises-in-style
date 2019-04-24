package main

import (
	"fmt"
	"time"
)

func main() {
	var c chan string = make(chan string)

	go producer(c)
	go producer2(c)
	time.Sleep(time.Second * 3)
	go consumer(c)

	var input string
	fmt.Scanln(&input)
}

func producer(c chan string) {
	for i := 0; ; i++ {
		c <- "stronzo!"
		time.Sleep(time.Second * 1)
	}
}

func producer2(c chan string) {
	for i := 0; ; i++ {
		c <- "testa di cazzo!"
		time.Sleep(time.Second * 1)
	}
}

func consumer(c chan string) {
	for i := 0; ; i++ {
		fmt.Println(<-c)
	}
}
