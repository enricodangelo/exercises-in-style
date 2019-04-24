package main

import (
	"flag" // command line option parser
	"fmt"
	//	"os"
)

var NewLine = flag.Bool("n", false, "print on newline")
var num = flag.Int64("scemo", 0, "quanto sei scemo")

// echo -n flag, of type *bool
const (
	Space   = " "
	Newline = "\n"
)

func main() {
	//	flag.PrintDefaults()
	flag.Parse()

	fmt.Println(*num)
}
