package main

import (
	"container/list"
	"fmt"
)

func main() {
	dll := list.New()
	dll.PushBack(101)
	dll.PushBack(102)
	dll.PushBack(103)

	fmt.Printf("dll = %v\n", dll)

	fmt.Printf("\n")
	for e := dll.Front(); e != nil; e = e.Next() {
		fmt.Printf("item = %v\n", e.Value)
	}
}
