package main

import (
    "fmt"
)

type Simpler interface {
    Get() int
    Set(v int)
}

type Simple struct {
    v int
}

func (s *Simple) Get() int {
    return s.v
}

func (s *Simple) Set(v int) {
    s.v = v
}

func main() {
    var a Simpler = new(Simple)
    a.Set(7)
    fmt.Printf("a.v = %d\n", a.Get())
}
