package MyStack

import (
    "fmt"
    "errors"
)

type Stack struct {
    arr []int
    top int
}

func (this *Stack) String() string {
    return fmt.Sprintf("%v", this.arr)
}

func NewStack() *Stack {
    var s *Stack = new(Stack)
    return s
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

func (this *Stack) Push(x int) (err error) {
    err = nil
    if this.IsFull() {
        fmt.Printf("Stack Overflow\n")
        err = errors.New("Stack Overflow")
        return
    }
    this.top++
    this.arr[this.top] = x
    return
}

func (this *Stack) Pop() (e int, err error) {
    e = -1
    err = nil
    if this.IsEmpty() {
        fmt.Printf("Stack Underflow\n")
        err = errors.New("Stack Underflow")
        return
    }
    this.top--
    e = this.arr[this.top + 1]
    return
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
    var e int
    var err error
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
    e, err = s.Pop()
    fmt.Printf("pop %d, %v\n", e, err)
}
