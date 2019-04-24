package main

import (
    "fmt"
)

type Stack struct {
    arr []int
    top int
}

func (this *Stack) String() string {
    return fmt.Sprintf("%v", this.arr)
}

func (this *Stack) InitStack(n int) {
    this.arr = make([]int, n)
    this.top = -1
}

func (this *Stack) IsEmpty() bool {
    if this.top == -1 {
        return true
    } else {
        return false
    }
}

func (this *Stack) IsFull() bool {
    if this.top == len(this.arr) - 1 {
        return true
    } else {
        return false
    }
}

func (this *Stack) Push(x int) {
    if this.IsFull() {
        fmt.Printf("Stack Overflow\n")
        return
    }
    this.top++
    this.arr[this.top] = x
}

func (this *Stack) Pop() int {
    if this.IsEmpty() {
        fmt.Printf("Stack Underflow\n")
        return -1
    }
    this.top--
    return this.arr[this.top + 1]
}

func main () {
    var s *Stack = new(Stack)
    s.InitStack(10)

    s.Push(1)
    s.Push(2)
    s.Push(3)
    s.Push(4)
    s.Push(5)
    s.Push(6)
    s.Push(7)
    s.Push(8)
    s.Push(9)
    s.Push(10)
    s.Push(11)
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
    fmt.Printf("pop %d\n", s.Pop())
}
