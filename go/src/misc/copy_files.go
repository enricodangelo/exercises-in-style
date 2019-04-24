package main

import (
	"fmt"
	"io"
	"os"
)

func main() {
	var source string = os.Args[1]
	var target string = os.Args[2]
	CopyFile(target, source)
	fmt.Println("Copy Done.")
}

func CopyFile(target string, source string) (written int64, err error) {
	fmt.Println("Copy ", source, " to ", target)
	src, err := os.Open(source)
	if err != nil {
		fmt.Println("errore source")
		return
	}
	defer src.Close()

	//dst, err := os.OpenFile(target, os.O_WRONLY|os.O_CREATE, 0644)
	dst, err := os.Create(target)
	if err != nil {
		fmt.Println("errore target")
		return
	}
	defer dst.Close()

	return io.Copy(dst, src)
}
