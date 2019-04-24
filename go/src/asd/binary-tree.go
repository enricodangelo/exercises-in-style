package main

import (
    "fmt"
)

type Node struct {
    key int
    p *Node //parent
    l *Node //left chikld
    r *Node //right child
}

