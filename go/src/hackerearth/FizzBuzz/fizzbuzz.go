package main

import (
	"fmt"
)

func main() {
	var testCases int64
	_, err := fmt.Scanf("%d", &testCases)
	if err != nil {
		panic(err)
	}

	var i int64
	for i = 0; i < testCases; i++ {
		fizzBuzz()
	}
}

func fizzBuzz() {
	var n int64
	_, err := fmt.Scanf("%d", &n)
	if err != nil {
		panic(err)
	}

	var i int64
	for i = 1; i <= n; i++ {
		var str string = fmt.Sprintf("%d", i)
		if i%3 == 0 {
			str = "Fizz"
		}
		if i%5 == 0 {
			str = "Buzz"
		}
		if (i%3 == 0) && (i%5 == 0) {
			str = "FizzBuzz"
		}

		fmt.Println(str)
	}
}
