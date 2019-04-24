package main

import (
    "fmt"
)

type Node struct {
    value int
    parent *Node
    l *Node
    r *Node
}

func (this *Node) String() string {
    return fmt.Sprintf("[%d, %v, %v]", this.value, this.l, this.r)
}

func main() {
    var root *Node = new(Node)
    root.value = 7;

    var n1 *Node = new(Node)
    n1.value = 43
    n1.parent = root
    root.l = n1

    var n2 *Node = new(Node)
    n2.value = 32
    n2.parent = root
    root.r = n2

    var n3 *Node = new(Node)
    n3.value = 6
    n3.parent = n1
    n1.l = n3

    var n4 *Node = new(Node)
    n4.value = 62
    n4.parent = n2
    n2.l = n4

    var n5 *Node = new(Node)
    n5.value = 41
    n5.parent = n3
    n3.r = n5

    var n6 *Node = new(Node)
    n6.value = 98
    n6.parent = n2
    n2.r = n6

    var n7 *Node = new(Node)
    n7.value = 3
    n7.parent = n4
    n4.l = n7

    var n8 *Node = new(Node)
    n8.value = 4
    n8.parent = n4
    n4.r = n8

    var n9 *Node = new(Node)
    n9.value = 8
    n9.parent = n6
    n6.l = n9

    var n10 *Node = new(Node)
    n10.value = 12
    n10.parent = n8
    n8.r = n10

    fmt.Printf("%v\n", root)
}
