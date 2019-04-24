package main

import (
	"bufio"
	"flag"
	"fmt"
	"io"
	"os"
)

var numbered = flag.Bool("n", false, "righe numerata")

func cat(r *bufio.Reader) {
	var n int64 = 1
	for {
		buf, err := r.ReadBytes('\n')
		if err == io.EOF {
			break
		}
		if *numbered {
			fmt.Fprintf(os.Stdout, "%d: %s", n, buf)
			n = n + 1
		} else {
			fmt.Fprintf(os.Stdout, "%s", buf)
		}
	}
	return
}

func main() {
	flag.Parse()
	if flag.NArg() == 0 {
		cat(bufio.NewReader(os.Stdin))
	}

	for i := 0; i < flag.NArg(); i++ {
		f, err := os.Open(flag.Arg(i))
		if err != nil {
			fmt.Fprintf(os.Stderr, "%s: error reading from %s: %s\n", os.Args[0], flag.Arg(i), err.Error())
			continue
		}
		cat(bufio.NewReader(f))
	}
}
