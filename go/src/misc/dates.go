package main

import (
	"fmt"
	"time"
)

func main() {
	var adesso time.Time = time.Now()

	fmt.Printf("Adesso sono le: %s\n", adesso)

	fmt.Printf("RFC822 format: %s\n", adesso.Format(time.RFC822))
	fmt.Printf("ANSI C format: %s\n", adesso.Format(time.ANSIC))
	fmt.Printf("\"7 12 1982\" format: %s\n", adesso.Format("7 12 1982"))
}
