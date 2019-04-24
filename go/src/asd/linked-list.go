package main

import (
    "fmt"
)

type Node struct {
    key int
    prev *Node
    next *Node
}

type DLList struct {
    head *Node
}

func (this *DLList) String() string {
    var s string = ""
    if this == nil {
        s += fmt.Sprintf("[nil]")
    } else {
        for x := this.head; x != nil; x = x.next {
            s += fmt.Sprintf("%d, ", x.key)
        }
    }
    return s
}

/*The procedure LIST-S EARCH .L; k/ finds the first element with key k in list L by a simple linear search, returning a pointer to this element. If no object with key k appears in the list, then the procedure returns NIL. */
func (this *DLList) Search(k int) *Node {
    var x *Node = this.head
    for ; x != nil && x.key != k; x = x.next {
    }
    return x
}

func (this *DLList) Insert(n *Node) {
    n.next = this.head
    n.prev = nil
    if this.head != nil {
        this.head.prev = n
    }
    this.head = n
}

func (this *DLList) Delete(k int) {
    var n *Node = this.Search(k)
    if n == nil {
        return
    }
    if n.prev != nil {
        n.prev.next = n.next
    }
    if n.next != nil {
        n.next.prev = n.prev
    }
    if this.head == n {
        this.head = n.next
    }
}

func main() {
    var list *DLList = new(DLList)

    for i := 0; i < 20; i++ {
        var n *Node = new(Node)
        n.key = i
        list.Insert(n)
    }

    fmt.Printf("list = %v\n", list)

    list.Delete(7)
    list.Delete(19)
    list.Delete(8)


    fmt.Printf("list = %v\n", list)
}
