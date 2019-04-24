package main

import (
    "fmt"
)

type Queue struct {
    arr []int
    head int
    tail int
}

func (this *Queue) InitQueue(n int) {
    this.arr = make([]int, n)
    this.head = 0
    this.tail = 0
}

func (this *Queue) String() string {
    return fmt.Sprintf("%v", this.arr)
}

func (this *Queue) NextIndex(n int) int {
    if n == len(this.arr) - 1 {
        return 0
    } else {
        return n + 1
    }
}

//func (this *Queue) PrevIndex(n int) int {
//    if n == 0 {
//        return len(this.arr) - 1
//    } else {
//        return n - 1
//    }
//}

func (this *Queue) IsEmpty() bool {
    if this.head == this.tail {
        return true
    } else {
        return false
    }
}

func (this *Queue) IsFull() bool {
    if this.head == this.NextIndex(this.tail) {
        return true
    } else {
        return false
    }
}

func (this *Queue) Dequeue() int {
    if this.IsEmpty() {
        fmt.Printf("Queue Underflow\n")
        return -1
    }
    var x int = this.arr[this.head]
    //solo per visualizzare l'elemento "vuoto"
    this.arr[this.head] = 0
    this.head = this.NextIndex(this.head)
    return x
}

func (this *Queue) Enqueue(x int) {
    if this.IsFull() {
        fmt.Printf("Queue Overflow\n")
        return
    }
    this.arr[this.tail] = x
    this.tail = this.NextIndex(this.tail)
}

func main() {
    var q *Queue = new(Queue)
    q.InitQueue(10)
    fmt.Printf("dequeue %d\n", q.Dequeue())
    q.Enqueue(1)
    fmt.Printf("q = %v\n", q)
    fmt.Printf("dequeue %d\n", q.Dequeue())
    q.Enqueue(2)
    fmt.Printf("q = %v\n", q)
    fmt.Printf("dequeue %d\n", q.Dequeue())
    q.Enqueue(3)
    fmt.Printf("q = %v\n", q)
    fmt.Printf("dequeue %d\n", q.Dequeue())
    q.Enqueue(4)
    fmt.Printf("q = %v\n", q)
    fmt.Printf("dequeue %d\n", q.Dequeue())
    q.Enqueue(5)
    fmt.Printf("q = %v\n", q)
    fmt.Printf("dequeue %d\n", q.Dequeue())
    q.Enqueue(6)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(7)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(8)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(9)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(10)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(11)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(12)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(13)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(14)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(15)
    fmt.Printf("q = %v\n", q)
    q.Enqueue(16)
    fmt.Printf("q = %v\n", q)

    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
    fmt.Printf("dequeue %d\n", q.Dequeue())
}
