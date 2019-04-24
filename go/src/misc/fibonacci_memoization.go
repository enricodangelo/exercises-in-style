package main

import (
	"fmt"
	"time"
)

const LIM = 50

var memo_fib [LIM]uint64

func main() {
	var result uint64 = 0
	var start time.Time = time.Now()
	for i := 0; i < LIM; i++ {
		result = fibonacci(i)
		fmt.Printf("fibonacci(%d) = %d\n", i, result)
	}
	var end time.Time = time.Now()
	var delta time.Duration = end.Sub(start)
	fmt.Printf("Duration = %s\n", delta)
}

func fibonacci(n int) (res uint64) {
	if memo_fib[n] != 0 {
		res = memo_fib[n]
		return
	}
	if n <= 1 {
		res = 1
	} else {
		res = fibonacci(n-1) + fibonacci(n-2)
	}
	memo_fib[n] = res
	return
}
