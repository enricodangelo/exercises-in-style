package main

import (
	"fmt"
	"time"
)

func main() {
	var start time.Time = time.Now()
	time.Sleep(3 * time.Second)
	var end time.Time = time.Now()

	var delta time.Duration = end.Sub(start)

	fmt.Printf("Start time: %v, end time: %v, duration: %v\n", start, end, delta)
}
